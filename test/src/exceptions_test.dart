import 'package:ht_preferences_client/ht_preferences_client.dart'; // Updated import
import 'package:test/test.dart';

void main() {
  group('Custom Exceptions', () {
    const testMessage = 'Something went wrong';

    // Test base exceptions first
    group('PreferenceNotFoundException', () {
      test('can be instantiated and toString works', () {
        final exception = PreferenceNotFoundException(testMessage);
        expect(exception, isA<Exception>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceNotFoundException: $testMessage'),
        );
      });
    });

    group('PreferenceUpdateException', () {
      test('can be instantiated and toString works', () {
        final exception = PreferenceUpdateException(testMessage);
        expect(exception, isA<Exception>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceUpdateException: $testMessage'),
        );
      });
    });
  });
}
