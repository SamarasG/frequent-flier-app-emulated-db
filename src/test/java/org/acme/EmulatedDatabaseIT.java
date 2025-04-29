package org.acme;

import io.quarkus.test.junit.QuarkusIntegrationTest;

@QuarkusIntegrationTest
class EmulatedDatabaseIT extends EmulatedDatabaseTest {
    // Execute the same tests but in packaged mode.
}
