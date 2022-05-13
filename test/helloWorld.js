const HelloWorld = artifacts.require("./HelloWorld.sol");

contract("HelloWorld", () => {
  it("Testing", async () => {
    const instance = await HelloWorld.deployed();
    await instance.setMessage("Hello World Rahat");
    const message = await instance.message();
    assert.equal(message, "Hello World Rahat");
  });
});
