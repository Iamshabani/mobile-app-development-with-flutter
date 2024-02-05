from django.shortcuts import render
import requests

def calculate_bmi(request):
    if request.method == 'POST':
        weight = request.POST.get('weight')
        height = request.POST.get('height')

        # Make API request
        api_url = f'http://bmi.app.ac.tz/calculate/weight={weight}&height={height}'
        response = requests.get(api_url)

        if response.status_code == 200:
            result = response.json()
            bmi = result['bmi']
            description = result['description']
            return render(request, 'bmi_app/result.html', {'bmi': bmi, 'description': description})
        else:
            error_message = 'Error calculating BMI. Please try again later.'
            return render(request, 'bmi_app/error.html', {'error_message': error_message})

    return render(request, 'bmi_app/calculate.html')
