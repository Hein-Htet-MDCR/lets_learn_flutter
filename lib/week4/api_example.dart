import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const MaterialApp(home: ApiExampleWithModel()));

class ApiExample extends StatefulWidget {
  const ApiExample({super.key});

  @override
  State<ApiExample> createState() => _ApiExampleState();
}

class _ApiExampleState extends State<ApiExample> {
  // Store the list of users from the API
  List<dynamic> _users = [];
  bool _isLoading = true;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _fetchUsers(); // Fetch data when the widget enters the screen
  }

  Future<void> _fetchUsers() async {
    try {
      final response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/users"),
      );

      print(response.body);

      if (response.statusCode == 200) {
        setState(() {
          _users = jsonDecode(response.body); // Parse JSON string to List
          _isLoading = false;
        });
      } else {
        setState(() {
          _errorMessage = 'Failed to load users: ${response.statusCode}';
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'An error occurred: $e';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Directory')),
      body: _buildBody(),
    );
  }

  // Helper widget to handle different UI states
  Widget _buildBody() {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(), // Show loading spinner
      );
    }

    if (_errorMessage.isNotEmpty) {
      return Center(
        child: Text(_errorMessage, style: const TextStyle(color: Colors.red)),
      );
    }

    if (_users.isEmpty) {
      return const Center(child: Text('No users found.'));
    }

    // Render the list of users
    return ListView.builder(
      itemCount: _users.length,
      itemBuilder: (context, index) {
        final user = _users[index];
        return ListTile(
          leading: CircleAvatar(
            child: Text(user['name'][0]), // First letter of name
          ),
          title: Text(user['name'] ?? 'No Name'),
          subtitle: Text(user['email'] ?? 'No Email'),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        );
      },
    );
  }
}

class User {
  final int id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(id: json['id'], name: json['name'], email: json['email']);
  }
}

class ApiExampleWithModel extends StatefulWidget {
  const ApiExampleWithModel({super.key});

  @override
  State<ApiExampleWithModel> createState() => _ApiExampleWithModelState();
}

class _ApiExampleWithModelState extends State<ApiExampleWithModel> {
  // Store the list of users from the API
  List<User> _users = [];
  bool _isLoading = true;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _fetchUsers(); // Fetch data when the widget enters the screen
  }

  Future<void> _fetchUsers() async {
    try {
      final response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/users"),
      );

      print(response.body);

      if (response.statusCode == 200) {
        setState(() {
          _users = List<User>.from(
            json.decode(response.body).map((x) => User.fromJson(x)),
          );
          // Parse JSON string to List
          _isLoading = false;
        });
      } else {
        setState(() {
          _errorMessage = 'Failed to load users: ${response.statusCode}';
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'An error occurred: $e';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Directory')),
      body: _buildBody(),
    );
  }

  // Helper widget to handle different UI states
  Widget _buildBody() {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(), // Show loading spinner
      );
    }

    if (_errorMessage.isNotEmpty) {
      return Center(
        child: Text(_errorMessage, style: const TextStyle(color: Colors.red)),
      );
    }

    if (_users.isEmpty) {
      return const Center(child: Text('No users found.'));
    }

    // Render the list of users
    return ListView.builder(
      itemCount: _users.length,
      itemBuilder: (context, index) {
        final user = _users[index];
        return ListTile(
          leading: CircleAvatar(
            child: Text(user.name[0]), // First letter of name
          ),
          title: Text(user.name),
          subtitle: Text(user.email),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        );
      },
    );
  }
}
