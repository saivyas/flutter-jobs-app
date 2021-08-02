class Job {
  final String title;
  Job({this.title});
  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      title: json['title'],
    );
  }
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Job && other.title == title;
  }

  @override
  int get hashCode => title.hashCode;
}
