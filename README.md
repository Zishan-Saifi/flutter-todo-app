# To-Do List App (Flutter)

A modern, responsive To-Do List application built with Flutter as part of the **DevCamp 2.0 (Week 2, Project 2)** assignment.

## Features

### Required Features
- **Task CRUD**: Add new tasks with validation, edit existing tasks, and delete unwanted tasks.
- **Visual Completion Distinction**: Strikethrough text and badge indicators for completed items.
- **Local Persistence**: Tasks and theme settings are saved locally using `shared_preferences` across app restarts.
- **Categories & Priorities**: Categorize tasks (Personal, Work, Study, Other) and prioritize (High, Medium, Low) with colored tags.
- **Theming**: Instant toggle between Light Mode and Dark Mode.

### Optional Extensions Included
- **Due Dates**: Date picker support for scheduling deadlines.
- **Real-Time Search**: Instant task filtering by title or description.
- **Filter Tabs**: Quick filtering by All, Pending, and Completed tasks.
- **Progress Summary**: Live visual card showing total completed percentage and active counts.

## Tech Stack
- **Framework**: Flutter (Dart)
- **State Management**: Stateful Widgets & setState
- **Local Storage**: `shared_preferences`

## Getting Started & Run Instructions

### Prerequisites
- Flutter SDK installed (3.x+)
- Chrome browser, Windows Desktop, or an Android emulator/device

### Installation & Run
1. Clone the repository:
   ```bash
   git clone <YOUR_GITHUB_REPO_URL>
   cd todo_app