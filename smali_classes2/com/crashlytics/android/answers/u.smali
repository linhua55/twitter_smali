.class Lcom/crashlytics/android/answers/u;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field a:J

.field private b:Lddx;


# direct methods
.method public constructor <init>(Lddx;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "retryState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/crashlytics/android/answers/u;->b:Lddx;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/crashlytics/android/answers/u;->a:J

    .line 50
    iget-object v0, p0, Lcom/crashlytics/android/answers/u;->b:Lddx;

    invoke-virtual {v0}, Lddx;->c()Lddx;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/answers/u;->b:Lddx;

    .line 51
    return-void
.end method

.method public a(J)Z
    .locals 5

    .prologue
    .line 33
    const-wide/32 v0, 0xf4240

    iget-object v2, p0, Lcom/crashlytics/android/answers/u;->b:Lddx;

    invoke-virtual {v2}, Lddx;->a()J

    move-result-wide v2

    mul-long/2addr v0, v2

    .line 34
    iget-wide v2, p0, Lcom/crashlytics/android/answers/u;->a:J

    sub-long v2, p1, v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/crashlytics/android/answers/u;->a:J

    .line 42
    iget-object v0, p0, Lcom/crashlytics/android/answers/u;->b:Lddx;

    invoke-virtual {v0}, Lddx;->b()Lddx;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/answers/u;->b:Lddx;

    .line 43
    return-void
.end method
