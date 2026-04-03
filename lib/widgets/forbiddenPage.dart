import 'package:flutter/material.dart';

class ForbiddenPage extends StatelessWidget {
  final String message;
  final VoidCallback? onBack;
  final VoidCallback? onLogin;

  const ForbiddenPage({
    super.key,
    this.message = "You don't have permission to access this page",
    this.onBack,
    this.onLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// ICON
            Container(
              height: 95,
              width: 95,
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(.12),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.lock_outline_rounded,
                size: 50,
                color: Colors.orange,
              ),
            ),

            const SizedBox(height: 20),

            /// TITLE
            const Text(
              "Access Forbidden",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            /// MESSAGE
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade600,
              ),
            ),

            const SizedBox(height: 25),

            /// BUTTONS
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// BACK BUTTON
                ElevatedButton(
                  // onPressed: onBack ?? () => Navigator.pop(context),
                  onPressed: () {
                    if (onBack != null) {
                      onBack!();
                    } else {
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      } else {
                        // Optional fallback: maybe show a message
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("No page to go back to."),
                          ),
                        );
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text("Go Back"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
