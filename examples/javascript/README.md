# JavaScript/Node.js AI Best Practices Implementation

This directory contains complete examples for implementing AI best practices in JavaScript/Node.js projects, including React, Express, and full-stack applications.

## 🚀 Quick Setup for JavaScript Projects

### 1. Prerequisites

```bash
# Node.js 18+ required
node --version  # Should be 18.0.0 or higher
npm --version   # Should be 9.0.0 or higher

# Git (for hooks)
git --version
```

### 2. Install Dependencies

```bash
# Core development dependencies
npm install --save-dev husky lint-staged prettier eslint

# Optional: TypeScript support
npm install --save-dev typescript @types/node

# Optional: Testing frameworks
npm install --save-dev jest @testing-library/react
```

### 3. Copy AI Guardrails

```bash
# From the ai-best-practices repository root:
cp -r git-hooks/husky/* .husky/
cp examples/.ai-restricted-files ./
cp -r .github/instructions/ ./.github/
```

### 4. Configure Package.json

```json
{
  "scripts": {
    "prepare": "husky install",
    "lint": "eslint src --ext .js,.jsx,.ts,.tsx",
    "lint:fix": "eslint src --ext .js,.jsx,.ts,.tsx --fix",
    "format": "prettier --write \"src/**/*.{js,jsx,ts,tsx,json,css,md}\"",
    "test": "jest",
    "test:coverage": "jest --coverage",
    "build": "npm run lint && npm run test && npm run build:prod",
    "build:prod": "webpack --mode production"
  },
  "lint-staged": {
    "*.{js,jsx,ts,tsx}": [
      "eslint --fix",
      "prettier --write"
    ],
    "*.{json,css,md}": [
      "prettier --write"
    ]
  },
  "husky": {
    "hooks": {
      "pre-commit": "lint-staged",
      "commit-msg": "node .husky/commit-msg",
      "pre-push": "npm run build"
    }
  }
}
```

## 📁 Project Examples

### Example 1: React Component with AI Assistance

**File: `src/components/UserProfile.tsx`**
```typescript
// [AI-Generated-Copilot] - User profile display component
import React from 'react';

interface User {
  id: string;
  name: string;
  email: string;
  avatar?: string;
}

interface UserProfileProps {
  user: User;
  onEdit?: (user: User) => void;
}

// [AI-Generated-Copilot] - Profile component with accessibility features
export const UserProfile: React.FC<UserProfileProps> = ({ user, onEdit }) => {
  const handleEditClick = () => {
    if (onEdit) {
      onEdit(user);
    }
  };

  return (
    <div className="user-profile" role="region" aria-label="User profile">
      <div className="user-profile__avatar">
        {user.avatar ? (
          <img 
            src={user.avatar} 
            alt={`${user.name}'s avatar`}
            className="user-profile__image"
          />
        ) : (
          <div 
            className="user-profile__placeholder"
            aria-label="No avatar available"
          >
            {user.name.charAt(0).toUpperCase()}
          </div>
        )}
      </div>
      
      <div className="user-profile__info">
        <h2 className="user-profile__name">{user.name}</h2>
        <p className="user-profile__email">{user.email}</p>
        
        {onEdit && (
          <button
            onClick={handleEditClick}
            className="user-profile__edit-btn"
            aria-label={`Edit ${user.name}'s profile`}
          >
            Edit Profile
          </button>
        )}
      </div>
    </div>
  );
};
```

**Test File: `src/components/__tests__/UserProfile.test.tsx`**
```typescript
// [AI-Generated-Copilot] - Comprehensive tests for UserProfile component
import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import { UserProfile } from '../UserProfile';

describe('UserProfile', () => {
  const mockUser = {
    id: '1',
    name: 'John Doe',
    email: 'john@example.com',
    avatar: 'https://example.com/avatar.jpg'
  };

  test('renders user information correctly', () => {
    render(<UserProfile user={mockUser} />);
    
    expect(screen.getByText('John Doe')).toBeInTheDocument();
    expect(screen.getByText('john@example.com')).toBeInTheDocument();
    expect(screen.getByAltText("John Doe's avatar")).toBeInTheDocument();
  });

  test('shows placeholder when no avatar provided', () => {
    const userWithoutAvatar = { ...mockUser, avatar: undefined };
    render(<UserProfile user={userWithoutAvatar} />);
    
    expect(screen.getByText('J')).toBeInTheDocument();
    expect(screen.getByLabelText('No avatar available')).toBeInTheDocument();
  });

  test('calls onEdit when edit button is clicked', () => {
    const mockOnEdit = jest.fn();
    render(<UserProfile user={mockUser} onEdit={mockOnEdit} />);
    
    const editButton = screen.getByLabelText("Edit John Doe's profile");
    fireEvent.click(editButton);
    
    expect(mockOnEdit).toHaveBeenCalledWith(mockUser);
  });

  test('does not show edit button when onEdit is not provided', () => {
    render(<UserProfile user={mockUser} />);
    
    expect(screen.queryByText('Edit Profile')).not.toBeInTheDocument();
  });
});
```

### Example 2: Express.js API with AI-Generated Endpoints

**File: `src/routes/users.ts`**
```typescript
// [AI-Generated-Claude] - RESTful user management API endpoints
import express from 'express';
import { body, param, validationResult } from 'express-validator';
import { UserService } from '../services/UserService';
import { authMiddleware } from '../middleware/auth';
import { rateLimitMiddleware } from '../middleware/rateLimit';

const router = express.Router();
const userService = new UserService();

// [AI-Generated-Claude] - Input validation middleware
const validateCreateUser = [
  body('name')
    .isLength({ min: 2, max: 100 })
    .withMessage('Name must be between 2 and 100 characters'),
  body('email')
    .isEmail()
    .normalizeEmail()
    .withMessage('Must be a valid email address'),
  body('password')
    .isLength({ min: 8 })
    .matches(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)/)
    .withMessage('Password must be at least 8 characters with uppercase, lowercase, and number'),
];

// [AI-Generated-Claude] - Get all users with pagination
router.get('/', 
  authMiddleware,
  rateLimitMiddleware(100, 15 * 60 * 1000), // 100 requests per 15 minutes
  async (req, res) => {
    try {
      const page = parseInt(req.query.page as string) || 1;
      const limit = Math.min(parseInt(req.query.limit as string) || 10, 100);
      
      const result = await userService.getUsers({ page, limit });
      
      res.json({
        success: true,
        data: result.users,
        pagination: {
          page,
          limit,
          total: result.total,
          pages: Math.ceil(result.total / limit)
        }
      });
    } catch (error) {
      console.error('Error fetching users:', error);
      res.status(500).json({
        success: false,
        error: 'Internal server error'
      });
    }
  }
);

// [AI-Generated-Claude] - Create new user with validation
router.post('/',
  validateCreateUser,
  async (req, res) => {
    try {
      const errors = validationResult(req);
      if (!errors.isEmpty()) {
        return res.status(400).json({
          success: false,
          errors: errors.array()
        });
      }

      const { name, email, password } = req.body;
      
      // Check if user already exists
      const existingUser = await userService.findByEmail(email);
      if (existingUser) {
        return res.status(409).json({
          success: false,
          error: 'User with this email already exists'
        });
      }

      const user = await userService.createUser({ name, email, password });
      
      // Remove password from response
      const { password: _, ...userResponse } = user;
      
      res.status(201).json({
        success: true,
        data: userResponse
      });
    } catch (error) {
      console.error('Error creating user:', error);
      res.status(500).json({
        success: false,
        error: 'Internal server error'
      });
    }
  }
);

export { router as userRoutes };
```

### Example 3: Service Class with Error Handling

**File: `src/services/UserService.ts`**
```typescript
// [AI-Generated-Copilot] - User service with comprehensive error handling
import bcrypt from 'bcrypt';
import { DatabaseError, NotFoundError, ValidationError } from '../errors';
import { User, CreateUserData, UpdateUserData } from '../types/User';
import { UserRepository } from '../repositories/UserRepository';

export class UserService {
  private userRepository: UserRepository;
  
  constructor(userRepository?: UserRepository) {
    this.userRepository = userRepository || new UserRepository();
  }

  // [AI-Generated-Copilot] - Create user with password hashing and validation
  async createUser(userData: CreateUserData): Promise<User> {
    try {
      // Validate input data
      if (!userData.email || !userData.password || !userData.name) {
        throw new ValidationError('Name, email, and password are required');
      }

      // Hash password with salt
      const saltRounds = 12;
      const hashedPassword = await bcrypt.hash(userData.password, saltRounds);

      const user = await this.userRepository.create({
        ...userData,
        password: hashedPassword,
        createdAt: new Date(),
        updatedAt: new Date()
      });

      return user;
    } catch (error) {
      if (error instanceof ValidationError) {
        throw error;
      }
      
      if (error.code === '23505') { // PostgreSQL unique constraint violation
        throw new ValidationError('User with this email already exists');
      }
      
      throw new DatabaseError(`Failed to create user: ${error.message}`);
    }
  }

  // [AI-Generated-Copilot] - Get users with pagination and filtering
  async getUsers(options: {
    page: number;
    limit: number;
    search?: string;
  }): Promise<{ users: User[]; total: number }> {
    try {
      const { page, limit, search } = options;
      
      // Validate pagination parameters
      if (page < 1 || limit < 1 || limit > 100) {
        throw new ValidationError('Invalid pagination parameters');
      }

      const offset = (page - 1) * limit;
      
      const result = await this.userRepository.findMany({
        offset,
        limit,
        search: search?.trim(),
      });

      return {
        users: result.users.map(user => this.sanitizeUser(user)),
        total: result.total
      };
    } catch (error) {
      if (error instanceof ValidationError) {
        throw error;
      }
      
      throw new DatabaseError(`Failed to fetch users: ${error.message}`);
    }
  }

  // [AI-Generated-Copilot] - Update user with optimistic locking
  async updateUser(id: string, updateData: UpdateUserData): Promise<User> {
    try {
      const existingUser = await this.userRepository.findById(id);
      if (!existingUser) {
        throw new NotFoundError(`User with ID ${id} not found`);
      }

      // Handle password update separately
      if (updateData.password) {
        const saltRounds = 12;
        updateData.password = await bcrypt.hash(updateData.password, saltRounds);
      }

      const updatedUser = await this.userRepository.update(id, {
        ...updateData,
        updatedAt: new Date()
      });

      return this.sanitizeUser(updatedUser);
    } catch (error) {
      if (error instanceof NotFoundError || error instanceof ValidationError) {
        throw error;
      }
      
      throw new DatabaseError(`Failed to update user: ${error.message}`);
    }
  }

  // [AI-Generated-Copilot] - Safe user data sanitization
  private sanitizeUser(user: User): User {
    const { password, ...sanitizedUser } = user;
    return sanitizedUser as User;
  }
}
```

## 🛠️ Configuration Files

### ESLint Configuration (`.eslintrc.js`)
```javascript
// [AI-Generated-Copilot] - ESLint configuration for TypeScript React project
module.exports = {
  extends: [
    'eslint:recommended',
    '@typescript-eslint/recommended',
    'plugin:react/recommended',
    'plugin:react-hooks/recommended',
    'prettier'
  ],
  parser: '@typescript-eslint/parser',
  plugins: ['@typescript-eslint', 'react', 'react-hooks'],
  rules: {
    // AI-generated code quality rules
    '@typescript-eslint/explicit-function-return-type': 'warn',
    '@typescript-eslint/no-unused-vars': 'error',
    '@typescript-eslint/no-explicit-any': 'warn',
    'react/prop-types': 'off', // Using TypeScript for prop validation
    'react/react-in-jsx-scope': 'off', // React 17+ doesn't require import
  },
  settings: {
    react: {
      version: 'detect'
    }
  }
};
```

### AI-Restricted Files (`.ai-restricted-files`)
```bash
# JavaScript/Node.js specific restrictions
**/package.json
**/package-lock.json
**/yarn.lock
**/tsconfig.json
**/webpack.config.js
**/babel.config.js
**/.eslintrc.*
**/jest.config.js

# Security-sensitive files
**/auth/**
**/middleware/auth.js
**/middleware/security.js
**/config/database.js
**/config/redis.js
**/.env*
**/secrets/**

# Production configurations
**/docker-compose.prod.yml
**/k8s/**
**/terraform/**
**/nginx.conf
```

## 📝 Example Workflow

### 1. Developer writes code with AI assistance:
```typescript
// [AI-Generated-Copilot] - JWT token validation middleware
export const validateToken = (req: Request, res: Response, next: NextFunction) => {
  // Implementation with proper error handling
};
```

### 2. Commit the code:
```bash
git add src/middleware/auth.ts
git commit -m "feat(auth): add JWT token validation middleware"
```

### 3. Git hook automatically detects AI content and transforms:
```
[AI-ASSISTED] feat(auth): add JWT token validation middleware

Generated by: GitHub Copilot
Reviewed by: John Developer
Scope: Authentication Middleware

Original message: feat(auth): add JWT token validation middleware
AI-generated code found in: src/middleware/auth.ts
```

### 4. Automated logging in `.ai-commit-log`:
```
2024-01-15 14:30:25 | abc123def | [AI-ASSISTED] feat(auth): add JWT validation | GitHub Copilot | john.developer
```

## 🧪 Testing Examples

### Unit Test with AI Comments
```typescript
// [AI-Generated-Copilot] - Comprehensive authentication middleware tests
describe('validateToken middleware', () => {
  test('should allow valid JWT tokens', async () => {
    // Test implementation
  });
  
  test('should reject expired tokens', async () => {
    // Test implementation  
  });
  
  test('should handle malformed tokens gracefully', async () => {
    // Test implementation
  });
});
```

## 📊 Monitoring Integration

### Example monitoring setup:
```typescript
// [AI-Generated-Claude] - Application performance monitoring setup
import { createPrometheusMetrics } from './monitoring/prometheus';
import { setupErrorTracking } from './monitoring/sentry';

const metrics = createPrometheusMetrics();
setupErrorTracking({
  dsn: process.env.SENTRY_DSN,
  environment: process.env.NODE_ENV
});

// Track AI-assisted commits
metrics.aiCommitsTotal.inc({
  tool: 'copilot',
  developer: 'john.developer'
});
```

## 🔄 Continuous Integration

### GitHub Actions Example (`.github/workflows/ci.yml`)
```yaml
# [AI-Generated-Claude] - CI pipeline with AI commit validation
name: CI Pipeline

on:
  push:
    branches: [main, develop]
  pull_request:
    branches: [main]

jobs:
  validate-ai-compliance:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Check AI commit compliance
        run: |
          # Validate AI-assisted commits are properly logged
          scripts/validate-ai-compliance.sh
          
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-node@v3
        with:
          node-version: '18'
      - run: npm ci
      - run: npm run lint
      - run: npm run test:coverage
      - run: npm run build
```

This JavaScript/Node.js implementation provides a complete example of AI best practices integration with real-world patterns and comprehensive testing strategies.