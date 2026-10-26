class Task {
  final String id;
  String title;
  String description;
  bool isCompleted;
  String priority; // 'High', 'Medium', 'Low'
  String category; // 'Personal', 'Work', 'Study', 'Other'
  DateTime? dueDate;

  Task({
    required this.id,
    required this.title,
    this.description = '',
    this.isCompleted = false,
    this.priority = 'Medium',
    this.category = 'Personal',
    this.dueDate,
  });

  // copyWith method
  Task copyWith({
    String? id,
    String? title,
    String? description,
    bool? isCompleted,
    String? priority,
    String? category,
    DateTime? dueDate,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted,
      priority: priority ?? this.priority,
      category: category ?? this.category,
      dueDate: dueDate ?? this.dueDate,
    );
  }

  // toMap for storage
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
      'priority': priority,
      'category': category,
      'dueDate': dueDate?.toIso8601String(),
    };
  }

  // fromMap for storage
  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      isCompleted: map['isCompleted'] ?? false,
      priority: map['priority'] ?? 'Medium',
      category: map['category'] ?? 'Personal',
      dueDate: map['dueDate'] != null ? DateTime.tryParse(map['dueDate']) : null,
    );
  }

  // JSON aliases so nothing fails
  Map<String, dynamic> toJson() => toMap();
  factory Task.fromJson(Map<String, dynamic> json) => Task.fromMap(json);
}