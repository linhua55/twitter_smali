.class public Lcom/twitter/android/timeline/bj;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:I

.field public final l:I

.field public final m:Z

.field public final n:I

.field public final o:I

.field public final p:Z

.field public final q:I


# direct methods
.method constructor <init>(Lcom/twitter/android/timeline/bk;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iget-object v0, p1, Lcom/twitter/android/timeline/bk;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/timeline/bj;->a:Ljava/lang/String;

    .line 59
    iget v0, p1, Lcom/twitter/android/timeline/bk;->b:I

    iput v0, p0, Lcom/twitter/android/timeline/bj;->b:I

    .line 60
    iget v0, p1, Lcom/twitter/android/timeline/bk;->c:I

    iput v0, p0, Lcom/twitter/android/timeline/bj;->c:I

    .line 61
    iget-wide v0, p1, Lcom/twitter/android/timeline/bk;->d:J

    iput-wide v0, p0, Lcom/twitter/android/timeline/bj;->d:J

    .line 62
    iget v0, p1, Lcom/twitter/android/timeline/bk;->f:I

    iput v0, p0, Lcom/twitter/android/timeline/bj;->f:I

    .line 63
    iget-boolean v0, p1, Lcom/twitter/android/timeline/bk;->g:Z

    iput-boolean v0, p0, Lcom/twitter/android/timeline/bj;->g:Z

    .line 64
    iget-boolean v0, p1, Lcom/twitter/android/timeline/bk;->h:Z

    iput-boolean v0, p0, Lcom/twitter/android/timeline/bj;->h:Z

    .line 65
    iget-boolean v0, p1, Lcom/twitter/android/timeline/bk;->i:Z

    iput-boolean v0, p0, Lcom/twitter/android/timeline/bj;->i:Z

    .line 66
    iget-boolean v0, p1, Lcom/twitter/android/timeline/bk;->j:Z

    iput-boolean v0, p0, Lcom/twitter/android/timeline/bj;->j:Z

    .line 67
    iget v0, p1, Lcom/twitter/android/timeline/bk;->k:I

    iput v0, p0, Lcom/twitter/android/timeline/bj;->k:I

    .line 68
    iget v0, p1, Lcom/twitter/android/timeline/bk;->l:I

    iput v0, p0, Lcom/twitter/android/timeline/bj;->l:I

    .line 69
    iget-boolean v0, p1, Lcom/twitter/android/timeline/bk;->m:Z

    iput-boolean v0, p0, Lcom/twitter/android/timeline/bj;->m:Z

    .line 70
    iget v0, p1, Lcom/twitter/android/timeline/bk;->o:I

    iput v0, p0, Lcom/twitter/android/timeline/bj;->o:I

    .line 71
    iget-boolean v0, p1, Lcom/twitter/android/timeline/bk;->p:Z

    iput-boolean v0, p0, Lcom/twitter/android/timeline/bj;->p:Z

    .line 72
    iget v0, p1, Lcom/twitter/android/timeline/bk;->q:I

    iput v0, p0, Lcom/twitter/android/timeline/bj;->q:I

    .line 73
    iget v0, p1, Lcom/twitter/android/timeline/bk;->n:I

    iput v0, p0, Lcom/twitter/android/timeline/bj;->n:I

    .line 74
    iget v0, p1, Lcom/twitter/android/timeline/bk;->e:I

    iput v0, p0, Lcom/twitter/android/timeline/bj;->e:I

    .line 75
    return-void
.end method
