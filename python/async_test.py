import asyncio

async def task_one():
    print("Task 1 started")
    await asyncio.sleep(2)  # Simulating I/O delay
    print("Task 1 finished")

async def task_two():
    print("Task 2 started")
    await asyncio.sleep(1)  # Simulating I/O delay
    print("Task 2 finished")

async def main():
    # Runs both tasks concurrently and waits for them to complete
    await asyncio.gather(task_one(), task_two())

# Starts the event loop
asyncio.run(main())