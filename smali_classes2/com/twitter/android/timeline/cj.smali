.class public Lcom/twitter/android/timeline/cj;
.super Lcom/twitter/android/timeline/bp;
.source "Twttr"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcss;

.field public d:Ljava/lang/String;

.field public e:Lcom/twitter/model/topic/i;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I


# direct methods
.method constructor <init>(Lcom/twitter/android/timeline/ck;)V
    .locals 4

    .prologue
    .line 24
    iget-object v0, p1, Lcom/twitter/android/timeline/ck;->a:Lcom/twitter/android/timeline/bj;

    iget-wide v2, p1, Lcom/twitter/android/timeline/ck;->b:J

    iget-object v1, p1, Lcom/twitter/android/timeline/ck;->c:Lcom/twitter/model/timeline/al;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/twitter/android/timeline/bp;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;)V

    .line 25
    iget-object v0, p1, Lcom/twitter/android/timeline/ck;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/android/timeline/ck;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 28
    :cond_1
    iget-object v0, p1, Lcom/twitter/android/timeline/ck;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/timeline/cj;->a:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/twitter/android/timeline/ck;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/timeline/cj;->b:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/twitter/android/timeline/ck;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/timeline/cj;->d:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/twitter/android/timeline/ck;->g:Lcss;

    iput-object v0, p0, Lcom/twitter/android/timeline/cj;->c:Lcss;

    .line 32
    iget-object v0, p1, Lcom/twitter/android/timeline/ck;->h:Lcom/twitter/model/topic/i;

    iput-object v0, p0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    .line 33
    iget-boolean v0, p1, Lcom/twitter/android/timeline/ck;->i:Z

    iput-boolean v0, p0, Lcom/twitter/android/timeline/cj;->f:Z

    .line 34
    iget-object v0, p1, Lcom/twitter/android/timeline/ck;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/timeline/cj;->g:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/twitter/android/timeline/ck;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/timeline/cj;->h:Ljava/lang/String;

    .line 36
    iget v0, p1, Lcom/twitter/android/timeline/ck;->l:I

    iput v0, p0, Lcom/twitter/android/timeline/cj;->i:I

    .line 37
    iget v0, p1, Lcom/twitter/android/timeline/ck;->m:I

    iput v0, p0, Lcom/twitter/android/timeline/cj;->j:I

    .line 38
    return-void
.end method
