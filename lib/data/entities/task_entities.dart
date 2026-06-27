import 'package:task_manager/domain/models/task_model.dart';

class TaskEntities extends TaskModel {
  TaskEntities.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    description = json['description'];
    status = json['status'];
    email = json['email'];
    createdDate = json['createdDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['title'] = title;
    data['description'] = description;
    data['status'] = status;
    data['email'] = email;
    data['createdDate'] = createdDate;
    return data;
  }
}
