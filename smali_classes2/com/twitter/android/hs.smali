.class Lcom/twitter/android/hs;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/android/timeline/bp;

.field final synthetic c:Lcom/twitter/android/ho;


# direct methods
.method constructor <init>(Lcom/twitter/android/ho;JLcom/twitter/android/timeline/bp;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/twitter/android/hs;->c:Lcom/twitter/android/ho;

    iput-wide p2, p0, Lcom/twitter/android/hs;->a:J

    iput-object p4, p0, Lcom/twitter/android/hs;->b:Lcom/twitter/android/timeline/bp;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 301
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/android/hs;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 6

    .prologue
    .line 304
    iget-object v0, p0, Lcom/twitter/android/hs;->c:Lcom/twitter/android/ho;

    iget-wide v2, p0, Lcom/twitter/android/hs;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/ho;->b(J)Lcom/twitter/model/timeline/l;

    move-result-object v1

    .line 305
    iget-object v0, p0, Lcom/twitter/android/hs;->c:Lcom/twitter/android/ho;

    iget-wide v2, p0, Lcom/twitter/android/hs;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/ho;->f(J)Lcom/twitter/model/timeline/i;

    move-result-object v0

    .line 306
    iget-object v2, p0, Lcom/twitter/android/hs;->c:Lcom/twitter/android/ho;

    iget-wide v4, p0, Lcom/twitter/android/hs;->a:J

    invoke-virtual {v2, v4, v5}, Lcom/twitter/android/ho;->d(J)Z

    .line 308
    if-eqz v1, :cond_0

    .line 310
    if-eqz v0, :cond_1

    .line 315
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/hs;->c:Lcom/twitter/android/ho;

    iget-object v2, p0, Lcom/twitter/android/hs;->b:Lcom/twitter/android/timeline/bp;

    const-string/jumbo v3, "remove"

    invoke-static {v1, v2, v0, v3}, Lcom/twitter/android/ho;->a(Lcom/twitter/android/ho;Lcom/twitter/android/timeline/bp;Lcom/twitter/model/timeline/i;Ljava/lang/String;)V

    .line 317
    :cond_0
    return-void

    .line 313
    :cond_1
    iget-object v0, v1, Lcom/twitter/model/timeline/l;->b:Lcom/twitter/model/timeline/i;

    goto :goto_0
.end method
