.class Lcom/twitter/android/us;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/us;->b:Z

    .line 2713
    iput-object p1, p0, Lcom/twitter/android/us;->a:Ljava/lang/String;

    .line 2714
    return-void
.end method


# virtual methods
.method a(J)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2717
    iget-boolean v0, p0, Lcom/twitter/android/us;->b:Z

    if-eqz v0, :cond_0

    .line 2723
    :goto_0
    return-void

    .line 2720
    :cond_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/us;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2721
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 2722
    iput-boolean v4, p0, Lcom/twitter/android/us;->b:Z

    goto :goto_0
.end method
