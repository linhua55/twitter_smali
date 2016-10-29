.class Lcom/twitter/android/livevideo/landing/aa;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/android/livevideo/landing/y;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/landing/y;J)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/aa;->b:Lcom/twitter/android/livevideo/landing/y;

    iput-wide p2, p0, Lcom/twitter/android/livevideo/landing/aa;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 6

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/twitter/android/livevideo/landing/aa;->a:J

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 114
    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/aa;->b:Lcom/twitter/android/livevideo/landing/y;

    iget-wide v4, p0, Lcom/twitter/android/livevideo/landing/aa;->a:J

    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/twitter/android/livevideo/landing/y;->b(JJ)V

    .line 115
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/twitter/android/livevideo/landing/aa;->a(Ljava/lang/Long;)V

    return-void
.end method
