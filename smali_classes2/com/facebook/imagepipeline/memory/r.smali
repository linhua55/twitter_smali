.class public Lcom/facebook/imagepipeline/memory/r;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/facebook/imagepipeline/memory/z;


# static fields
.field private static a:Lcom/facebook/imagepipeline/memory/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/imagepipeline/memory/r;->a:Lcom/facebook/imagepipeline/memory/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static declared-synchronized a()Lcom/facebook/imagepipeline/memory/r;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/facebook/imagepipeline/memory/r;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/memory/r;->a:Lcom/facebook/imagepipeline/memory/r;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/facebook/imagepipeline/memory/r;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/r;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/memory/r;->a:Lcom/facebook/imagepipeline/memory/r;

    .line 25
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/memory/r;->a:Lcom/facebook/imagepipeline/memory/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public a(Lcom/facebook/imagepipeline/memory/BasePool;)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
