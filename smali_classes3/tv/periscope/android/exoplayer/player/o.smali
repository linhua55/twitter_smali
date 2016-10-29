.class Ltv/periscope/android/exoplayer/player/o;
.super Ljava/util/TimerTask;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/exoplayer/player/n;


# direct methods
.method constructor <init>(Ltv/periscope/android/exoplayer/player/n;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Ltv/periscope/android/exoplayer/player/o;->a:Ltv/periscope/android/exoplayer/player/n;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/o;->a:Ltv/periscope/android/exoplayer/player/n;

    invoke-static {v0}, Ltv/periscope/android/exoplayer/player/n;->b(Ltv/periscope/android/exoplayer/player/n;)V

    .line 536
    return-void
.end method
