from subprocess import run, Popen, PIPE, STDOUT

def compile(
    output_path: str,
    random_seed: int = 42,
    dimension: int = 3,
    init_width: float = 1,
    init_height: float = 1,
    init_speed: float = 1,
    neighbors: int = 5,
    time_interval: float = 1e-2,
    iterations: int = 2000,
    group_size: int = 1000,
):
    command = (
        'gcc -Ofast -fopenmp -march=native flock.c -lm'
        f' -o {output_path}'
        f' -DRAND_SEED={random_seed}'
        f' -DDIMENSION={dimension}'
        f' -DINIT_WIDTH={init_width}'
        f' -DINIT_HEIGHT={init_height}'
        f' -DINIT_SPEED={init_speed}'
        f' -DNEIGHBORS={neighbors}'
        f' -DTIME_INTERVAL={time_interval}'
        f' -DITERATIONS={iterations}'
        f' -DGROUP_SIZE={group_size}'
    )
    run(command, shell=True, check=True)


def execute(exe_path):
    execute = Popen('./' + exe_path, stdout=PIPE, stderr=PIPE)
    result = ''
    while execute.poll() is None:
        line = execute.stdout.read().decode("utf-8")
        if line:
            result += line
    return result


exe_path = 'flock.out'
compile(exe_path)
result = execute(exe_path)
print(result)
