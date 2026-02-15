console.log("Running tests...");

const ok = true; // đổi false để thấy Jenkins fail

if (!ok) {
    console.log("TEST FAILED");
    process.exit(1);
}

console.log("ALL TEST PASSED");
