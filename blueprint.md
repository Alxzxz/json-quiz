
# Flutter Quiz App Blueprint

## Overview

This document outlines the plan for a Flutter quiz application. The app will load quiz questions and answers from a user-selected JSON file, display them one by one, and provide immediate feedback on the user's answers.

## Features

*   **Load Quiz from JSON:** Users can load a quiz by selecting a JSON file from their device.
*   **Question Display:** The app displays one question at a time with multiple-choice answers.
*   **Instant Feedback:** After selecting an answer, the app immediately indicates whether it is correct or incorrect. If incorrect, it highlights the correct answer.
*   **Navigation:** Users can navigate to the next question.
*   **Styling:** The app will have a clean, modern, and intuitive design, following Material Design principles.

## Project Structure

*   `lib/main.dart`: The main entry point of the application.
*   `lib/models/question.dart`: The data model for a single quiz question.
*   `lib/providers/quiz_provider.dart`: The state management provider for the quiz.
*   `lib/screens/home_screen.dart`: The initial screen with the button to load the quiz.
*   `lib/screens/quiz_screen.dart`: The screen where the quiz is taken.
*   `assets/`: This directory will be created to hold any necessary assets, like the initial JSON file for the quiz.

## Plan

1.  **Setup Dependencies:** Add `provider` for state management and `file_picker` for file selection to `pubspec.yaml`.
2.  **Create Data Model:** Define the `Question` class in `lib/models/question.dart` to represent the JSON structure.
3.  **Implement State Management:** Create a `QuizProvider` in `lib/providers/quiz_provider.dart` to manage the quiz state, including loading questions, tracking the current question, and handling answers.
4.  **Build UI Screens:**
    *   **Home Screen:** A simple screen with a title and a button to trigger the file picker.
    *   **Quiz Screen:** A screen to display the current question, answer choices, provide feedback, and navigate to the next question.
5.  **File Handling:** Implement the logic to pick a JSON file, parse it, and load the questions into the `QuizProvider`.
6.  **Theming and Styling:** Apply a consistent and visually appealing theme to the application.
