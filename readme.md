# Task Management App for Users with ADHD

## Project Overview

This app is designed to help users, especially those with ADHD, manage tasks and deadlines effectively. It incorporates a reward system to encourage consistent task completion, as well as an optional “rush mode” for increased focus on time-sensitive subtasks.

## Functionalities and Logic

### Task Creation and Deadline Management

    1.	Task Creation
        [ ] Users can create tasks with or without subtasks.
        [ ] When creating a task, users may set an optional, fixed deadline.
    2.	Deadline Types and Constraints
        [ ] Absolute Deadline: A specific date and time.
        [ ] Relative Deadline: A time interval from when the subtask becomes active (e.g., 25 minutes, 1 hour, 1 day).
        [ ] Deadlines are unchangeable once set.
        [ ] If a task or subtask deadline is missed, the task is marked as failed and removed (or archived if tracking failed tasks).
    3.	Subtasks and Sequential Unlocking
        [ ] Subtasks must be completed sequentially, with the next subtask unlocking only if the previous one is completed on time.
        [ ] This unlocking mechanism applies to both absolute and relative deadlines.
        [ ] If any subtask in “rush mode” fails, the entire task is marked as failed.
    4.	Point System with Streaks
        [ ] Tasks: Each completed task without subtasks earns 1 point.
        [ ] Task Streaks: For a streak of completed tasks, points increase logarithmically:
        [ ] 2nd task without subtasks earns 1.3 points
        [ ] 3rd task without subtasks earns 1.477 points
        [ ] Maximum streak length is 5.
        [ ] Subtasks: The first subtask completed gives no additional points.
        [ ] Additional subtasks reward: 1 + log(subtask streak)
        [ ] A task with 2 completed subtasks earns: 1 + log(2) = 1.3 points.
        [ ] A task with 3 completed subtasks earns: 1 + log(3) ≈ 1.477 points.

## User Stories

### Task Creation and Management

    1.	As a user, I want to create a new task with an optional deadline, so I can organize my goals with or without specific time constraints.
    2.	As a user, I want to add subtasks with deadlines (absolute or relative) that sequentially unlock, so I am encouraged to complete them in a structured order.
    3.	As a user, I want tasks and subtasks to become unchangeable once their deadlines are set, so I commit to my initial plans and deadlines.
    4.	As a user, I want any overdue task or subtask to be removed or marked as failed, so I am motivated to complete tasks on time and avoid “clutter” from incomplete tasks.

### Streaks and Rewards

    5.	As a user, I want to earn 1 point for completing a task without subtasks, so I have a baseline reward for task completion.
    6.	As a user, I want my points to increase based on the length of my task streak, using a logarithmic multiplier to keep progress motivating but realistic.
    7.	As a user, I want additional points for completing multiple subtasks within a single task, using a logarithmic multiplier for consecutive subtask streaks to encourage consistent progress on complex tasks.
    8.	As a user, I want “rush mode” to add a higher level of challenge to my subtasks, with the consequence that failing any one subtask results in failing the entire task, so I feel more engaged and focused on time-sensitive tasks.

## Technology stack:

### Frontend

    - Nuxt 3 (Vue 3)
    - TypeScript
    - Vite
    - Pinia
    - Components framework TBD

### Backend

    - Node.js
    - Express

### Database

    - MongoDB
    - Redis

### Misc

    - Docker
    - Docker Compose
    - CI/CD - TBD