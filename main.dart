import 'package:flutter/material.dart';

void main() {
  runApp(const MavenFarmerApp());
}

class MavenFarmerApp extends StatelessWidget {
  const MavenFarmerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MavenFarmer',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "MAVEN",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LearnScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                backgroundColor: Colors.green,
              ),
              child: const Text(
                "Next",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn with MavenFarmer'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: const Icon(Icons.info, color: Colors.green),
            title: const Text('Basics of Poultry Farming'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BasicsOfPoultryScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.monetization_on, color: Colors.green),
            title: const Text('Capital Investment Breakdown'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CapitalInvestmentScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.warning, color: Colors.green),
            title: const Text('Risks in Poultry Farming'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RisksScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.calculate, color: Colors.green),
            title: const Text('Expected Returns Calculator'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PoultryCalculatorScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class BasicsOfPoultryScreen extends StatelessWidget {
  const BasicsOfPoultryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basics of Poultry Farming'),
      ),
      body: const Center(
        child: Text(
          'Poultry farming involves the raising of domesticated birds such as chickens, turkeys, ducks, and geese for the purpose of producing eggs and meat.\n' 
          'To succeed in poultry farming, it is important to understand the following:\n'
          '1. Housing: Birds need proper housing to protect them from the elements and predators.\n'
          '2. Feeding: A balanced diet is essential to ensure healthy birds and optimal production.\n'
          '3. Health Management: Regular vaccinations and disease control are important.\n'
          '4. Management: Effective management practices such as maintaining the right temperature, humidity, and light are key to a successful poultry farm.\n'
          'Types of poultry Farming:\n'
          '1.Broiler Farming: This focuses on raising fast-growing chickens for meat production.\n'
   
          '2.Layer Farming: Layer farming involves raising chickens specifically for egg production.\n'
   
          '3.Kienyeji Farming: This traditional method involves raising indigenous chicken breeds that roam freely and are known for their hardiness and resistance to diseases.\n'
   
          '4.Improved Kienyeji Farming: This is a more modern approach that involves crossbreeding indigenous chickens with commercial breeds to improve traits like growth rate and egg production.\n',
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}

class CapitalInvestmentScreen extends StatelessWidget {
  const CapitalInvestmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Capital Investment Breakdown'),
      ),
      body: const Center(
        child: Text(
          'Capital investment in poultry farming includes the following costs:\n\n'
          '1.Land or Facility: The cost of acquiring land or renting a poultry house.\n'
          '2. Equipment: Incubators, feeders, water systems, lighting, and temperature control.\n'
          '3. Livestock: The initial cost of purchasing the birds (Broilers, Layers, or Kienyeji).\n'
          '4. Feed: The ongoing cost of purchasing or producing food for the birds.\n'
          '5. Labor: Hiring workers to assist with daily tasks.\n\n'
          'The cost of starting a poultry farm in Kenya varies depending on the scale and type of operation. Here are some rough estimates:'
          '\nA.Small-scale poultry farm (50-100 birds):\n'
          'Initial investment: Ksh 50,000 - Ksh 200,000' 
          'Ongoing costs: Ksh 20,000 - Ksh 50,000 per month (feed, medication, labor, etc.)' 
          '\nB.Medium-scale poultry farm (200-500 birds):'
          'Initial investment: Ksh 200,000 - Ksh 500,000'
          'Ongoing costs: Ksh 50,000 - Ksh 150,000 per month'
          '\nC.Large-scale poultry farm (1000+ birds):\n'
          'Initial investment: Ksh 500,000 - Ksh 5,000,000+\n'
          'Ongoing costs: Ksh 150,000+ per month\n',
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}

class RisksScreen extends StatelessWidget {
  const RisksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Risks in Poultry Farming'),
      ),
      body: const Center(
        child: Text(
          'The main risks associated with poultry farming include:\n\n'
          '1. Disease Outbreaks: Infectious diseases like avian flu can wipe out a farms stock.\n'
          '2. Market Fluctuation: Prices of poultry products can vary based on supply and demand.\n'
          '3. Feed Cost Increases: Rising feed costs can affect profitability.\n'
          '4. Weather Conditions: Extreme weather conditions such as heatwaves or cold spells can impact bird health and productivity.\n'
          '5. Predators and Theft: Predators and theft can cause significant losses.\n\n'
          'Mitigating risks:\n'
          '1.Strict Biosecurity.\n'
          '2.Vaccination.\n'
          '3.Proper Sanitation.\n'
          '4.Diversification-for economic risks.\n'
          '5.Regulatory Compliance.'
          '\n6.Predator control and security against theft.\n',
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}

class PoultryCalculatorScreen extends StatefulWidget {
  const PoultryCalculatorScreen({super.key});

  @override
  _PoultryCalculatorScreenState createState() => _PoultryCalculatorScreenState();
}

class _PoultryCalculatorScreenState extends State<PoultryCalculatorScreen> {
  final TextEditingController birdCountController = TextEditingController();

  int birdCount = 0;
  String scale = '';
  Map<String, double> returns = {};
  Map<String, double> capital = {};
  Map<String, double> percentageReturns = {};

  void calculateReturns() {
    setState(() {
      birdCount = int.tryParse(birdCountController.text) ?? 0;

      if (birdCount <= 100) {
        scale = "Small Scale";
      } else if (birdCount <= 500) {
        scale = "Medium Scale";
      } else {
        scale = "Large Scale";
      }

      capital = _calculateCapital(birdCount);
      returns = _calculateReturns(birdCount);
      percentageReturns = _calculatePercentageReturns(capital, returns);
    });
  }

  Map<String, double> _calculateCapital(int birds) {
    return {
      "Broiler": birds * 600.0,
      "Layer": birds * 2500.0,
      "Kienyeji": birds * 1000.0,
    };
  }

  Map<String, double> _calculateReturns(int birds) {
    const broilerProfitMargin = 0.18; // Average of 15-20%
    const layerProfitMargin = 0.225; // Average of 20-25%
    const kienyejiProfitMargin = 0.325; // Average of 30-35%

    return {
      "Broiler": birds * 600 * broilerProfitMargin,
      "Layer": birds * 2500 * layerProfitMargin,
      "Kienyeji": birds * 1000 * kienyejiProfitMargin,
    };
  }

  Map<String, double> _calculatePercentageReturns(
      Map<String, double> capital, Map<String, double> returns) {
    return {
      "Broiler": (returns["Broiler"]! / capital["Broiler"]! * 100),
      "Layer": (returns["Layer"]! / capital["Layer"]! * 100),
      "Kienyeji": (returns["Kienyeji"]! / capital["Kienyeji"]! * 100),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MavenFarmer Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Enter Number of Birds:",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: birdCountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "E.g., 100, 200, 1000",
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: calculateReturns,
              child: const Text("Calculate Returns"),
            ),
            const SizedBox(height: 20),
            if (returns.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Scale: $scale",
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  _buildResultRow(
                      "Broiler", capital["Broiler"], returns["Broiler"]),
                  _buildResultRow("Layer", capital["Layer"], returns["Layer"]),
                  _buildResultRow(
                      "Kienyeji", capital["Kienyeji"], returns["Kienyeji"]),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildResultRow(String type, double? capital, double? returns) {
    double percentage = percentageReturns[type] ?? 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$type Farming:",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          "  Capital Investment: Ksh ${capital!.toStringAsFixed(2)}",
          style: const TextStyle(fontSize: 16),
        ),
        Text(
          "  Expected Returns: Ksh ${returns!.toStringAsFixed(2)}",
          style: const TextStyle(fontSize: 16),
        ),
        Text(
          "  Percentage Returns: ${percentage.toStringAsFixed(2)}%",
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
