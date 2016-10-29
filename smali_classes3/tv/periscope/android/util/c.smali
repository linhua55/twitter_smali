.class public abstract Ltv/periscope/android/util/c;
.super Ljava/lang/Thread;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public run()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 13
    invoke-virtual {p0}, Ltv/periscope/android/util/c;->a()V

    .line 14
    return-void
.end method
