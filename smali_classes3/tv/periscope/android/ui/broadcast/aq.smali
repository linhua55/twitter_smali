.class Ltv/periscope/android/ui/broadcast/aq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcast/am;

.field private b:Z


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/am;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/aq;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcast/aq;Z)Z
    .locals 0

    .prologue
    .line 168
    iput-boolean p1, p0, Ltv/periscope/android/ui/broadcast/aq;->b:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 176
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/aq;->b:Z

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aq;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/am;->d(Ltv/periscope/android/ui/broadcast/am;)V

    .line 181
    :goto_0
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/aq;->a:Ltv/periscope/android/ui/broadcast/am;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aq;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/am;->e(Ltv/periscope/android/ui/broadcast/am;)V

    .line 183
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aq;->a:Ltv/periscope/android/ui/broadcast/am;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ltv/periscope/android/ui/broadcast/am;->b(Ltv/periscope/android/ui/broadcast/am;Z)Z

    .line 184
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aq;->a:Ltv/periscope/android/ui/broadcast/am;

    const/4 v2, 0x0

    iput-boolean v2, v0, Ltv/periscope/android/ui/broadcast/am;->a:Z

    .line 185
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aq;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/am;->f(Ltv/periscope/android/ui/broadcast/am;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aq;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/am;->g(Ltv/periscope/android/ui/broadcast/am;)V

    .line 187
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aq;->a:Ltv/periscope/android/ui/broadcast/am;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ltv/periscope/android/ui/broadcast/am;->a(J)V

    .line 189
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aq;->a:Ltv/periscope/android/ui/broadcast/am;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltv/periscope/android/ui/broadcast/am;->a(Ltv/periscope/android/ui/broadcast/am;Z)Z

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
