class RepoResponse<T> {
  T record;
  String? message;
  String? status;

  RepoResponse({required this.record, this.message, this.status});
}
