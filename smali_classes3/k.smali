.class Lk;
.super Lj;
.source "Twttr"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final a:Lio/fabric/sdk/android/d;

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/a;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lj;-><init>()V

    .line 18
    new-instance v0, Ll;

    invoke-direct {v0, p0}, Ll;-><init>(Lk;)V

    iput-object v0, p0, Lk;->a:Lio/fabric/sdk/android/d;

    .line 38
    iput-object p2, p0, Lk;->b:Ljava/util/concurrent/ExecutorService;

    .line 39
    iget-object v0, p0, Lk;->a:Lio/fabric/sdk/android/d;

    invoke-virtual {p1, v0}, Lio/fabric/sdk/android/a;->a(Lio/fabric/sdk/android/d;)Z

    .line 40
    return-void
.end method

.method static synthetic a(Lk;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lk;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
