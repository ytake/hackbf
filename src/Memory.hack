namespace Hackbf;

use function array_key_exists;

class Memory {

  public function __construct(
    protected vec<int> $memory = vec[],
    protected int $pos = 0
  ) {}

  public function read(): int {
    return $this->memory[$this->pos];
  }

  public function write(
    int $value
  ): void {
    $this->memory[$this->pos] = $value;
  }

  public function move(
    int $amount
  ): void {
    $this->pos += $amount;
    if (!array_key_exists($this->pos, $this->memory)) {
      $this->memory[$this->pos] = 0;
    }
  }
}
