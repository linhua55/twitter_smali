.class Ltv/periscope/android/graphics/k;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Ltv/periscope/android/graphics/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1660
    const-string/jumbo v0, "GLThreadManager"

    sput-object v0, Ltv/periscope/android/graphics/k;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/periscope/android/graphics/a;)V
    .locals 0

    .prologue
    .line 1659
    invoke-direct {p0}, Ltv/periscope/android/graphics/k;-><init>()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 1724
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/graphics/k;->c:Z

    .line 1725
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/graphics/k;->b:Z

    .line 1726
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ltv/periscope/android/graphics/j;)V
    .locals 1

    .prologue
    .line 1666
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Ltv/periscope/android/graphics/j;->a(Ltv/periscope/android/graphics/j;Z)Z

    .line 1667
    iget-object v0, p0, Ltv/periscope/android/graphics/k;->d:Ltv/periscope/android/graphics/j;

    if-ne v0, p1, :cond_0

    .line 1668
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/graphics/k;->d:Ltv/periscope/android/graphics/j;

    .line 1670
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1671
    monitor-exit p0

    return-void

    .line 1666
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 1715
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ltv/periscope/android/graphics/k;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 1719
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltv/periscope/android/graphics/k;->c()V

    .line 1720
    iget-boolean v0, p0, Ltv/periscope/android/graphics/k;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1719
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ltv/periscope/android/graphics/j;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1681
    iget-object v1, p0, Ltv/periscope/android/graphics/k;->d:Ltv/periscope/android/graphics/j;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Ltv/periscope/android/graphics/k;->d:Ltv/periscope/android/graphics/j;

    if-nez v1, :cond_2

    .line 1682
    :cond_0
    iput-object p1, p0, Ltv/periscope/android/graphics/k;->d:Ltv/periscope/android/graphics/j;

    .line 1683
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1697
    :cond_1
    :goto_0
    return v0

    .line 1686
    :cond_2
    invoke-direct {p0}, Ltv/periscope/android/graphics/k;->c()V

    .line 1687
    iget-boolean v1, p0, Ltv/periscope/android/graphics/k;->b:Z

    if-nez v1, :cond_1

    .line 1694
    iget-object v0, p0, Ltv/periscope/android/graphics/k;->d:Ltv/periscope/android/graphics/j;

    if-eqz v0, :cond_3

    .line 1695
    iget-object v0, p0, Ltv/periscope/android/graphics/k;->d:Ltv/periscope/android/graphics/j;

    invoke-virtual {v0}, Ltv/periscope/android/graphics/j;->f()V

    .line 1697
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ltv/periscope/android/graphics/j;)V
    .locals 1

    .prologue
    .line 1705
    iget-object v0, p0, Ltv/periscope/android/graphics/k;->d:Ltv/periscope/android/graphics/j;

    if-ne v0, p1, :cond_0

    .line 1706
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/graphics/k;->d:Ltv/periscope/android/graphics/j;

    .line 1708
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1709
    return-void
.end method
