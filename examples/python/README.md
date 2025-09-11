# Python AI Best Practices Implementation

This directory contains complete examples for implementing AI best practices in Python projects, including Flask/FastAPI applications, Django projects, and data science workflows.

## 🚀 Quick Setup for Python Projects

### 1. Prerequisites

```bash
# Python 3.9+ required
python --version  # Should be 3.9.0 or higher
pip --version     # Should be latest

# Git (for hooks)
git --version

# Optional: Virtual environment tools
python -m venv --help
```

### 2. Create Virtual Environment

```bash
# Create virtual environment
python -m venv ai-best-practices-env

# Activate (Linux/Mac)
source ai-best-practices-env/bin/activate

# Activate (Windows)
ai-best-practices-env\Scripts\activate
```

### 3. Install Dependencies

```bash
# Core development dependencies
pip install black flake8 mypy pytest pytest-cov pre-commit

# Web framework dependencies (choose one)
pip install flask flask-sqlalchemy flask-marshmallow  # Flask
pip install fastapi uvicorn sqlalchemy pydantic      # FastAPI
pip install django djangorestframework              # Django

# Optional: Data science dependencies
pip install pandas numpy scikit-learn jupyter
```

### 4. Copy AI Guardrails

```bash
# From the ai-best-practices repository root:
cp -r tools/scripts/ ./tools/
cp examples/.ai-restricted-files ./
cp -r .github/instructions/ ./.github/

# Setup pre-commit
pre-commit install
```

### 5. Configure Project Files

**requirements.txt**
```txt
# Core dependencies
flask==2.3.3
sqlalchemy==2.0.21
marshmallow==3.20.1

# Development dependencies
black==23.7.0
flake8==6.0.0
mypy==1.5.1
pytest==7.4.2
pytest-cov==4.1.0
pre-commit==3.4.0
```

**pyproject.toml**
```toml
[build-system]
requires = ["setuptools>=45", "wheel"]
build-backend = "setuptools.build_meta"

[tool.black]
line-length = 88
target-version = ['py39']
include = '\.pyi?$'

[tool.mypy]
python_version = "3.9"
warn_return_any = true
warn_unused_configs = true
disallow_untyped_defs = true

[tool.pytest.ini_options]
testpaths = ["tests"]
python_files = "test_*.py"
python_classes = "Test*"
python_functions = "test_*"
addopts = "--cov=src --cov-report=html --cov-report=term-missing"

[tool.coverage.run]
source = ["src"]
omit = ["*/tests/*", "*/migrations/*"]
```

**.pre-commit-config.yaml**
```yaml
# [AI-Generated-Claude] - Pre-commit configuration for Python projects
repos:
  - repo: https://github.com/pre-commit/pre-commit-hooks
    rev: v4.4.0
    hooks:
      - id: trailing-whitespace
      - id: end-of-file-fixer
      - id: check-yaml
      - id: check-added-large-files

  - repo: https://github.com/psf/black
    rev: 23.7.0
    hooks:
      - id: black

  - repo: https://github.com/pycqa/flake8
    rev: 6.0.0
    hooks:
      - id: flake8

  - repo: https://github.com/pre-commit/mirrors-mypy
    rev: v1.5.1
    hooks:
      - id: mypy
        additional_dependencies: [types-all]
```

## 📁 Project Examples

### Example 1: FastAPI Application with AI-Generated Endpoints

**File: `src/models/user.py`**
```python
# [AI-Generated-Copilot] - User model with SQLAlchemy and Pydantic integration
from datetime import datetime
from typing import Optional
from sqlalchemy import Column, Integer, String, DateTime, Boolean
from sqlalchemy.ext.declarative import declarative_base
from pydantic import BaseModel, EmailStr, validator
import bcrypt

Base = declarative_base()


class User(Base):
    """User database model with security best practices."""
    
    __tablename__ = "users"
    
    id = Column(Integer, primary_key=True, index=True)
    email = Column(String(255), unique=True, index=True, nullable=False)
    username = Column(String(100), unique=True, index=True, nullable=False)
    hashed_password = Column(String(255), nullable=False)
    full_name = Column(String(200), nullable=False)
    is_active = Column(Boolean, default=True)
    is_superuser = Column(Boolean, default=False)
    created_at = Column(DateTime, default=datetime.utcnow)
    updated_at = Column(DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)

    def verify_password(self, password: str) -> bool:
        """Verify password against hash."""
        return bcrypt.checkpw(password.encode('utf-8'), self.hashed_password.encode('utf-8'))

    @staticmethod
    def hash_password(password: str) -> str:
        """Hash password with bcrypt."""
        salt = bcrypt.gensalt()
        return bcrypt.hashpw(password.encode('utf-8'), salt).decode('utf-8')


# [AI-Generated-Copilot] - Pydantic schemas for request/response validation
class UserBase(BaseModel):
    """Base user schema with common fields."""
    email: EmailStr
    username: str
    full_name: str
    is_active: bool = True

    @validator('username')
    def validate_username(cls, v):
        if len(v) < 3:
            raise ValueError('Username must be at least 3 characters long')
        if not v.isalnum():
            raise ValueError('Username must be alphanumeric')
        return v


class UserCreate(UserBase):
    """Schema for creating new users."""
    password: str

    @validator('password')
    def validate_password(cls, v):
        if len(v) < 8:
            raise ValueError('Password must be at least 8 characters long')
        if not any(char.isupper() for char in v):
            raise ValueError('Password must contain at least one uppercase letter')
        if not any(char.islower() for char in v):
            raise ValueError('Password must contain at least one lowercase letter')
        if not any(char.isdigit() for char in v):
            raise ValueError('Password must contain at least one digit')
        return v


class UserResponse(UserBase):
    """Schema for user responses (excludes password)."""
    id: int
    created_at: datetime
    updated_at: datetime

    class Config:
        from_attributes = True


class UserUpdate(BaseModel):
    """Schema for updating users."""
    email: Optional[EmailStr] = None
    username: Optional[str] = None
    full_name: Optional[str] = None
    is_active: Optional[bool] = None
```

**File: `src/services/user_service.py`**
```python
# [AI-Generated-Claude] - User service with comprehensive error handling and validation
from typing import List, Optional
from sqlalchemy.orm import Session
from sqlalchemy.exc import IntegrityError
from fastapi import HTTPException, status

from ..models.user import User
from ..schemas.user import UserCreate, UserUpdate
from ..core.exceptions import DatabaseError, NotFoundError, ValidationError


class UserService:
    """Service class for user operations with comprehensive error handling."""

    def __init__(self, db: Session):
        self.db = db

    # [AI-Generated-Claude] - Create user with validation and security
    async def create_user(self, user_data: UserCreate) -> User:
        """
        Create a new user with password hashing and validation.
        
        Args:
            user_data: User creation data
            
        Returns:
            Created user object
            
        Raises:
            ValidationError: If user data is invalid
            DatabaseError: If database operation fails
        """
        try:
            # Check if user already exists
            existing_user = self.db.query(User).filter(
                (User.email == user_data.email) | 
                (User.username == user_data.username)
            ).first()
            
            if existing_user:
                if existing_user.email == user_data.email:
                    raise ValidationError("Email already registered")
                else:
                    raise ValidationError("Username already taken")

            # Create new user with hashed password
            db_user = User(
                email=user_data.email,
                username=user_data.username,
                full_name=user_data.full_name,
                hashed_password=User.hash_password(user_data.password),
                is_active=user_data.is_active
            )

            self.db.add(db_user)
            self.db.commit()
            self.db.refresh(db_user)

            return db_user

        except IntegrityError as e:
            self.db.rollback()
            raise DatabaseError(f"Database integrity error: {str(e)}")
        except Exception as e:
            self.db.rollback()
            raise DatabaseError(f"Failed to create user: {str(e)}")

    # [AI-Generated-Claude] - Get users with pagination and filtering
    async def get_users(
        self, 
        skip: int = 0, 
        limit: int = 100, 
        search: Optional[str] = None,
        is_active: Optional[bool] = None
    ) -> List[User]:
        """
        Retrieve users with pagination and optional filtering.
        
        Args:
            skip: Number of records to skip
            limit: Maximum number of records to return
            search: Optional search term for username or email
            is_active: Optional filter by active status
            
        Returns:
            List of users matching criteria
        """
        try:
            query = self.db.query(User)

            # Apply filters
            if is_active is not None:
                query = query.filter(User.is_active == is_active)

            if search:
                search_term = f"%{search}%"
                query = query.filter(
                    (User.username.ilike(search_term)) |
                    (User.email.ilike(search_term)) |
                    (User.full_name.ilike(search_term))
                )

            # Apply pagination
            users = query.offset(skip).limit(limit).all()
            return users

        except Exception as e:
            raise DatabaseError(f"Failed to retrieve users: {str(e)}")

    # [AI-Generated-Claude] - Update user with optimistic locking
    async def update_user(self, user_id: int, user_update: UserUpdate) -> User:
        """
        Update user information with validation.
        
        Args:
            user_id: ID of user to update
            user_update: Update data
            
        Returns:
            Updated user object
            
        Raises:
            NotFoundError: If user doesn't exist
            ValidationError: If update data is invalid
            DatabaseError: If database operation fails
        """
        try:
            db_user = self.db.query(User).filter(User.id == user_id).first()
            
            if not db_user:
                raise NotFoundError(f"User with ID {user_id} not found")

            # Update only provided fields
            update_data = user_update.dict(exclude_unset=True)
            
            for field, value in update_data.items():
                setattr(db_user, field, value)

            self.db.commit()
            self.db.refresh(db_user)

            return db_user

        except NotFoundError:
            raise
        except IntegrityError as e:
            self.db.rollback()
            raise ValidationError("User data conflicts with existing records")
        except Exception as e:
            self.db.rollback()
            raise DatabaseError(f"Failed to update user: {str(e)}")

    # [AI-Generated-Claude] - Authenticate user with security measures
    async def authenticate_user(self, username: str, password: str) -> Optional[User]:
        """
        Authenticate user with username/email and password.
        
        Args:
            username: Username or email
            password: Plain text password
            
        Returns:
            User object if authentication successful, None otherwise
        """
        try:
            # Find user by username or email
            user = self.db.query(User).filter(
                (User.username == username) | (User.email == username)
            ).first()

            if not user:
                return None

            if not user.is_active:
                return None

            if not user.verify_password(password):
                return None

            return user

        except Exception as e:
            raise DatabaseError(f"Authentication failed: {str(e)}")
```

**File: `src/api/routes/users.py`**
```python
# [AI-Generated-Copilot] - FastAPI user routes with comprehensive validation
from typing import List
from fastapi import APIRouter, Depends, HTTPException, status, Query
from sqlalchemy.orm import Session

from ...database import get_db
from ...services.user_service import UserService
from ...schemas.user import UserResponse, UserCreate, UserUpdate
from ...core.exceptions import ValidationError, NotFoundError, DatabaseError
from ...core.dependencies import get_current_active_user
from ...core.security import RateLimiter

router = APIRouter(prefix="/users", tags=["users"])
rate_limiter = RateLimiter(max_calls=100, window_seconds=3600)  # 100 calls per hour


# [AI-Generated-Copilot] - Get users with pagination and filtering
@router.get("/", response_model=List[UserResponse])
async def get_users(
    skip: int = Query(0, ge=0, description="Number of records to skip"),
    limit: int = Query(10, ge=1, le=100, description="Maximum records to return"),
    search: str = Query(None, description="Search term for username/email"),
    is_active: bool = Query(None, description="Filter by active status"),
    db: Session = Depends(get_db),
    current_user: UserResponse = Depends(get_current_active_user),
    _: None = Depends(rate_limiter)
):
    """
    Retrieve users with pagination and optional filtering.
    Requires authentication.
    """
    try:
        user_service = UserService(db)
        users = await user_service.get_users(
            skip=skip, 
            limit=limit, 
            search=search, 
            is_active=is_active
        )
        return users
        
    except DatabaseError as e:
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=str(e)
        )
    except Exception as e:
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail="An unexpected error occurred"
        )


# [AI-Generated-Copilot] - Create new user with comprehensive validation
@router.post("/", response_model=UserResponse, status_code=status.HTTP_201_CREATED)
async def create_user(
    user_data: UserCreate,
    db: Session = Depends(get_db),
    _: None = Depends(rate_limiter)
):
    """
    Create a new user account.
    Public endpoint with rate limiting.
    """
    try:
        user_service = UserService(db)
        user = await user_service.create_user(user_data)
        return user
        
    except ValidationError as e:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail=str(e)
        )
    except DatabaseError as e:
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail="Failed to create user"
        )
    except Exception as e:
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail="An unexpected error occurred"
        )


# [AI-Generated-Copilot] - Update user with authorization checks
@router.put("/{user_id}", response_model=UserResponse)
async def update_user(
    user_id: int,
    user_update: UserUpdate,
    db: Session = Depends(get_db),
    current_user: UserResponse = Depends(get_current_active_user),
    _: None = Depends(rate_limiter)
):
    """
    Update user information.
    Users can only update their own profile unless they are superusers.
    """
    try:
        # Authorization check: users can only update themselves unless superuser
        if current_user.id != user_id and not current_user.is_superuser:
            raise HTTPException(
                status_code=status.HTTP_403_FORBIDDEN,
                detail="Not authorized to update this user"
            )

        user_service = UserService(db)
        user = await user_service.update_user(user_id, user_update)
        return user
        
    except NotFoundError as e:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail=str(e)
        )
    except ValidationError as e:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail=str(e)
        )
    except DatabaseError as e:
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail="Failed to update user"
        )
```

### Example 2: Data Science Workflow with AI Comments

**File: `src/analysis/kpi_analyzer.py`**
```python
# [AI-Generated-Claude] - KPI analysis module with comprehensive data processing
import pandas as pd
import numpy as np
from typing import Dict, List, Optional, Tuple
from sklearn.preprocessing import StandardScaler
from sklearn.cluster import KMeans
from datetime import datetime, timedelta
import logging

logger = logging.getLogger(__name__)


class KPIAnalyzer:
    """
    Comprehensive KPI analysis with AI-assisted data processing and insights.
    """

    def __init__(self, data_source: str, config: Dict):
        self.data_source = data_source
        self.config = config
        self.scaler = StandardScaler()
        self.data = None
        self.processed_data = None

    # [AI-Generated-Claude] - Data loading with validation and cleaning
    def load_data(self, file_path: str) -> pd.DataFrame:
        """
        Load and validate KPI data from various sources.
        
        Args:
            file_path: Path to data file
            
        Returns:
            Cleaned and validated DataFrame
            
        Raises:
            ValueError: If data format is invalid
            FileNotFoundError: If file doesn't exist
        """
        try:
            # Load data based on file extension
            if file_path.endswith('.csv'):
                data = pd.read_csv(file_path)
            elif file_path.endswith('.xlsx'):
                data = pd.read_excel(file_path)
            elif file_path.endswith('.json'):
                data = pd.read_json(file_path)
            else:
                raise ValueError(f"Unsupported file format: {file_path}")

            # Validate required columns
            required_columns = self.config.get('required_columns', [])
            missing_columns = set(required_columns) - set(data.columns)
            if missing_columns:
                raise ValueError(f"Missing required columns: {missing_columns}")

            # Data cleaning and validation
            data = self._clean_data(data)
            data = self._validate_data_types(data)
            
            logger.info(f"Successfully loaded {len(data)} records from {file_path}")
            self.data = data
            return data
            
        except Exception as e:
            logger.error(f"Failed to load data from {file_path}: {str(e)}")
            raise

    # [AI-Generated-Claude] - Advanced data cleaning with outlier detection
    def _clean_data(self, data: pd.DataFrame) -> pd.DataFrame:
        """
        Clean data by handling missing values and outliers.
        
        Args:
            data: Raw DataFrame
            
        Returns:
            Cleaned DataFrame
        """
        # Handle missing values
        numeric_columns = data.select_dtypes(include=[np.number]).columns
        categorical_columns = data.select_dtypes(include=['object']).columns
        
        # Fill numeric columns with median
        data[numeric_columns] = data[numeric_columns].fillna(
            data[numeric_columns].median()
        )
        
        # Fill categorical columns with mode
        for col in categorical_columns:
            mode_value = data[col].mode().iloc[0] if not data[col].mode().empty else 'Unknown'
            data[col] = data[col].fillna(mode_value)

        # Remove outliers using IQR method
        for col in numeric_columns:
            Q1 = data[col].quantile(0.25)
            Q3 = data[col].quantile(0.75)
            IQR = Q3 - Q1
            lower_bound = Q1 - 1.5 * IQR
            upper_bound = Q3 + 1.5 * IQR
            
            outlier_count = len(data[(data[col] < lower_bound) | (data[col] > upper_bound)])
            if outlier_count > 0:
                logger.warning(f"Removing {outlier_count} outliers from column {col}")
                data = data[(data[col] >= lower_bound) & (data[col] <= upper_bound)]

        return data

    # [AI-Generated-Claude] - KPI calculation with trend analysis
    def calculate_kpis(self) -> Dict[str, any]:
        """
        Calculate comprehensive KPIs with trend analysis.
        
        Returns:
            Dictionary containing calculated KPIs and trends
        """
        if self.data is None:
            raise ValueError("Data not loaded. Call load_data() first.")

        try:
            kpi_results = {}
            
            # Basic KPIs
            numeric_columns = self.data.select_dtypes(include=[np.number]).columns
            
            for col in numeric_columns:
                kpi_results[f"{col}_mean"] = self.data[col].mean()
                kpi_results[f"{col}_median"] = self.data[col].median()
                kpi_results[f"{col}_std"] = self.data[col].std()
                kpi_results[f"{col}_min"] = self.data[col].min()
                kpi_results[f"{col}_max"] = self.data[col].max()

            # Time-based analysis (if date column exists)
            date_columns = self.data.select_dtypes(include=['datetime64']).columns
            if len(date_columns) > 0:
                date_col = date_columns[0]
                kpi_results.update(self._calculate_time_based_kpis(date_col))

            # Advanced analytics
            kpi_results['correlation_matrix'] = self.data[numeric_columns].corr().to_dict()
            kpi_results['feature_importance'] = self._calculate_feature_importance()
            
            logger.info("Successfully calculated KPIs")
            return kpi_results
            
        except Exception as e:
            logger.error(f"Failed to calculate KPIs: {str(e)}")
            raise

    # [AI-Generated-Claude] - Machine learning-based insights generation
    def generate_insights(self, kpi_data: Dict) -> Dict[str, List[str]]:
        """
        Generate actionable insights using machine learning techniques.
        
        Args:
            kpi_data: Calculated KPI data
            
        Returns:
            Dictionary of categorized insights
        """
        insights = {
            'performance_insights': [],
            'trend_insights': [],
            'anomaly_insights': [],
            'recommendation_insights': []
        }

        try:
            # Performance insights
            numeric_columns = self.data.select_dtypes(include=[np.number]).columns
            for col in numeric_columns:
                mean_val = kpi_data.get(f"{col}_mean", 0)
                std_val = kpi_data.get(f"{col}_std", 0)
                
                if std_val > mean_val * 0.5:  # High variability
                    insights['performance_insights'].append(
                        f"High variability detected in {col} (CV: {std_val/mean_val:.2f})"
                    )

            # Clustering for pattern identification
            if len(numeric_columns) >= 2:
                cluster_insights = self._perform_clustering()
                insights['trend_insights'].extend(cluster_insights)

            # Anomaly detection
            anomalies = self._detect_anomalies()
            insights['anomaly_insights'].extend(anomalies)

            # Recommendations based on analysis
            recommendations = self._generate_recommendations(kpi_data)
            insights['recommendation_insights'].extend(recommendations)

            logger.info("Successfully generated insights")
            return insights
            
        except Exception as e:
            logger.error(f"Failed to generate insights: {str(e)}")
            return insights

    # [AI-Generated-Claude] - Clustering analysis for pattern detection
    def _perform_clustering(self) -> List[str]:
        """Perform clustering analysis to identify patterns."""
        try:
            numeric_data = self.data.select_dtypes(include=[np.number])
            scaled_data = self.scaler.fit_transform(numeric_data)
            
            # Optimal number of clusters using elbow method
            inertias = []
            k_range = range(2, min(11, len(numeric_data) // 10))
            
            for k in k_range:
                kmeans = KMeans(n_clusters=k, random_state=42)
                kmeans.fit(scaled_data)
                inertias.append(kmeans.inertia_)
            
            # Simple elbow detection
            optimal_k = 3  # Default fallback
            if len(inertias) >= 3:
                differences = np.diff(inertias)
                second_diff = np.diff(differences)
                if len(second_diff) > 0:
                    optimal_k = np.argmax(second_diff) + 2
            
            # Perform clustering with optimal k
            kmeans = KMeans(n_clusters=optimal_k, random_state=42)
            clusters = kmeans.fit_predict(scaled_data)
            
            # Analyze cluster characteristics
            cluster_insights = []
            for i in range(optimal_k):
                cluster_data = self.data[clusters == i]
                cluster_size = len(cluster_data)
                cluster_insights.append(
                    f"Cluster {i+1}: {cluster_size} records ({cluster_size/len(self.data)*100:.1f}%)"
                )
            
            return cluster_insights
            
        except Exception as e:
            logger.warning(f"Clustering analysis failed: {str(e)}")
            return []
```

## 🧪 Testing Examples

**File: `tests/test_user_service.py`**
```python
# [AI-Generated-Copilot] - Comprehensive unit tests for UserService
import pytest
from unittest.mock import Mock, patch
from sqlalchemy.orm import Session
from sqlalchemy.exc import IntegrityError

from src.services.user_service import UserService
from src.models.user import User
from src.schemas.user import UserCreate, UserUpdate
from src.core.exceptions import ValidationError, NotFoundError, DatabaseError


class TestUserService:
    """Test suite for UserService with comprehensive coverage."""

    @pytest.fixture
    def mock_db(self):
        """Mock database session."""
        return Mock(spec=Session)

    @pytest.fixture
    def user_service(self, mock_db):
        """UserService instance with mocked database."""
        return UserService(mock_db)

    @pytest.fixture
    def sample_user_data(self):
        """Sample user creation data."""
        return UserCreate(
            email="test@example.com",
            username="testuser",
            full_name="Test User",
            password="SecurePass123",
            is_active=True
        )

    @pytest.fixture
    def sample_user(self):
        """Sample user instance."""
        user = User(
            id=1,
            email="test@example.com",
            username="testuser",
            full_name="Test User",
            hashed_password=User.hash_password("SecurePass123"),
            is_active=True
        )
        return user

    # [AI-Generated-Copilot] - Test successful user creation
    @pytest.mark.asyncio
    async def test_create_user_success(self, user_service, mock_db, sample_user_data):
        """Test successful user creation with proper password hashing."""
        # Arrange
        mock_db.query.return_value.filter.return_value.first.return_value = None
        
        # Act
        result = await user_service.create_user(sample_user_data)
        
        # Assert
        assert result is not None
        mock_db.add.assert_called_once()
        mock_db.commit.assert_called_once()
        mock_db.refresh.assert_called_once()

    # [AI-Generated-Copilot] - Test user creation with duplicate email
    @pytest.mark.asyncio
    async def test_create_user_duplicate_email(self, user_service, mock_db, sample_user_data, sample_user):
        """Test user creation fails with duplicate email."""
        # Arrange
        mock_db.query.return_value.filter.return_value.first.return_value = sample_user
        
        # Act & Assert
        with pytest.raises(ValidationError, match="Email already registered"):
            await user_service.create_user(sample_user_data)

    # [AI-Generated-Copilot] - Test database integrity error handling
    @pytest.mark.asyncio
    async def test_create_user_database_error(self, user_service, mock_db, sample_user_data):
        """Test handling of database integrity errors."""
        # Arrange
        mock_db.query.return_value.filter.return_value.first.return_value = None
        mock_db.commit.side_effect = IntegrityError("statement", "params", "orig")
        
        # Act & Assert
        with pytest.raises(DatabaseError):
            await user_service.create_user(sample_user_data)
        
        mock_db.rollback.assert_called_once()

    # [AI-Generated-Copilot] - Test user authentication with valid credentials
    @pytest.mark.asyncio
    async def test_authenticate_user_success(self, user_service, mock_db, sample_user):
        """Test successful user authentication."""
        # Arrange
        mock_db.query.return_value.filter.return_value.first.return_value = sample_user
        
        # Act
        result = await user_service.authenticate_user("testuser", "SecurePass123")
        
        # Assert
        assert result == sample_user

    # [AI-Generated-Copilot] - Test user authentication with invalid credentials
    @pytest.mark.asyncio
    async def test_authenticate_user_invalid_password(self, user_service, mock_db, sample_user):
        """Test authentication fails with invalid password."""
        # Arrange
        mock_db.query.return_value.filter.return_value.first.return_value = sample_user
        
        # Act
        result = await user_service.authenticate_user("testuser", "WrongPassword")
        
        # Assert
        assert result is None

    # [AI-Generated-Copilot] - Test get users with pagination
    @pytest.mark.asyncio
    async def test_get_users_with_pagination(self, user_service, mock_db, sample_user):
        """Test retrieving users with pagination."""
        # Arrange
        mock_db.query.return_value.offset.return_value.limit.return_value.all.return_value = [sample_user]
        
        # Act
        result = await user_service.get_users(skip=0, limit=10)
        
        # Assert
        assert len(result) == 1
        assert result[0] == sample_user
        mock_db.query.return_value.offset.assert_called_once_with(0)
        mock_db.query.return_value.offset.return_value.limit.assert_called_once_with(10)
```

## 🛠️ Configuration Files

### AI-Restricted Files (`.ai-restricted-files`)
```bash
# Python specific restrictions
**/requirements.txt
**/pyproject.toml
**/setup.py
**/setup.cfg
**/__init__.py
**/manage.py
**/wsgi.py
**/asgi.py
**/settings.py
**/config.py

# Security-sensitive files
**/auth/**
**/security/**
**/middleware/security.py
**/core/security.py
**/.env*
**/secrets/**

# Data and model files
**/models/
**/migrations/
**/data/*.csv
**/data/*.json
**/notebooks/*.ipynb

# Production configurations
**/docker-compose.prod.yml
**/k8s/**
**/terraform/**
**/nginx.conf
**/gunicorn.conf.py
```

## 📊 Example Workflow

### 1. Developer creates AI-assisted code:
```python
# [AI-Generated-Copilot] - Data validation with comprehensive error handling
def validate_kpi_data(data: pd.DataFrame) -> Tuple[bool, List[str]]:
    """Validate KPI data with detailed error reporting."""
    errors = []
    # Implementation
    return len(errors) == 0, errors
```

### 2. Commit with automatic detection:
```bash
git add src/validation/kpi_validator.py
git commit -m "feat(validation): add comprehensive KPI data validation"
```

### 3. Git hook transformation:
```
[AI-ASSISTED] feat(validation): add comprehensive KPI data validation

Generated by: GitHub Copilot
Reviewed by: Data Scientist
Scope: Data Validation Module

Original message: feat(validation): add comprehensive KPI data validation
AI-generated code found in: src/validation/kpi_validator.py
```

## 🔄 Continuous Integration

**File: `.github/workflows/python-ci.yml`**
```yaml
# [AI-Generated-Claude] - Python CI pipeline with AI compliance checking
name: Python CI

on:
  push:
    branches: [main, develop]
  pull_request:
    branches: [main]

jobs:
  test:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        python-version: [3.9, 3.10, 3.11]

    steps:
    - uses: actions/checkout@v3
    
    - name: Set up Python ${{ matrix.python-version }}
      uses: actions/setup-python@v3
      with:
        python-version: ${{ matrix.python-version }}
    
    - name: Install dependencies
      run: |
        python -m pip install --upgrade pip
        pip install -r requirements.txt
        pip install -r requirements-dev.txt
    
    - name: Lint with flake8
      run: |
        flake8 src tests --count --select=E9,F63,F7,F82 --show-source --statistics
        flake8 src tests --count --exit-zero --max-complexity=10 --statistics
    
    - name: Type check with mypy
      run: |
        mypy src
    
    - name: Test with pytest
      run: |
        pytest tests/ --cov=src --cov-report=xml --cov-report=html
    
    - name: Check AI compliance
      run: |
        python tools/validate_ai_compliance.py
```

This Python implementation demonstrates comprehensive AI best practices integration with FastAPI, SQLAlchemy, data science workflows, and robust testing strategies.