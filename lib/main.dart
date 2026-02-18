import 'package:flutter/material.dart';

void main() => runApp(const MuebleriCarrasco());

class MuebleriCarrasco extends StatelessWidget {
  const MuebleriCarrasco({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mueblería Carrasco',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Colors.blueGrey[800]!;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),

              // --- LOGO (Consistente con la marca) ---
              Text(
                "MM",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: primaryColor),
              ),
              const Text(
                "Mueblería\nCarrasco",
                style: TextStyle(fontSize: 18, height: 1.2, fontWeight: FontWeight.w500),
              ),

              const SizedBox(height: 50),

              // --- TÍTULO CENTRAL ---
              const Center(
                child: Text(
                  "Bienvenido",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              const Center(
                child: Text(
                  "Inicia sesión para continuar",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),

              const SizedBox(height: 40),

              // --- CAMPO: NOMBRE DE USUARIO ---
              Text(
                "Nombre de Usuario",
                style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline, color: primaryColor),
                  hintText: "Ej: usuario123",
                  filled: true,
                  fillColor: Colors.blueGrey[50],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // --- CAMPO: CONTRASEÑA ---
              Text(
                "Contraseña",
                style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline, color: primaryColor),
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
                  hintText: "••••••••",
                  filled: true,
                  fillColor: Colors.blueGrey[50],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 25), // Spacing after password field

              // --- BOTÓN ENTRAR ---
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    // Aquí podrías navegar a la HomePage
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    elevation: 5,
                  ),
                  child: const Text(
                    "Iniciar Sesión",
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              const SizedBox(height: 25), // Adjusted spacing for consistency

              // Enlace de olvidar contraseña centrado y debajo del botón de inicio de sesión
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text("¿Olvidaste tu contraseña?"),
                ),
              ),

              const SizedBox(height: 30), // Spacing between forgot password and register section

              // --- SECCIÓN DE REGISTRO ---
              Center(
                child: Column(
                  children: [
                    // Changed text as per request: "¿Ya tienes una cuenta?"
                    const Text("¿Ya tienes una cuenta?", style: TextStyle(fontSize: 15)),
                    const SizedBox(height: 10),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: primaryColor, width: 2),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        minimumSize: const Size(200, 45),
                      ),
                      child: Text(
                        "Crear Cuenta",
                        style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}