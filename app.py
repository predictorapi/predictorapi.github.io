from flask import Flask, request, jsonify
import json

app = Flask(__name__)

# Endpoint to check license
@app.route('/check-license', methods=['POST'])
def check_license():
    # Load licenses from JSON file
    with open('licenses.json', 'r') as f:
        licenses = json.load(f)

    # Get license from request data
    request_data = request.get_json()
    license_to_check = request_data.get('license')

    # Check if license exists
    if license_to_check in licenses:
        return jsonify({'message': f'License "{license_to_check}" exists in the database.'})
    else:
        return jsonify({'message': f'License "{license_to_check}" does not exist in the database.'})

if __name__ == '__main__':
    app.run(debug=True)
