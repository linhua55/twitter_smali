.class Ltv/periscope/android/ui/broadcast/bx;
.super Ljava/lang/Thread;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/exoplayer/player/e;

.field final synthetic b:Ltv/periscope/android/ui/broadcast/bw;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/bw;Ljava/lang/String;Ltv/periscope/android/exoplayer/player/e;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/bx;->b:Ltv/periscope/android/ui/broadcast/bw;

    iput-object p3, p0, Ltv/periscope/android/ui/broadcast/bx;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bx;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0}, Ltv/periscope/android/exoplayer/player/e;->e()V

    .line 92
    return-void
.end method
