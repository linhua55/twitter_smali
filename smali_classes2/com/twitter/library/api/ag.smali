.class public Lcom/twitter/library/api/ag;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/timeline/ay;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcsz;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/twitter/model/timeline/ai;

.field public final d:Lclh;

.field public final e:Lcom/twitter/model/timeline/br;

.field public final f:Lcom/twitter/model/livevideo/d;

.field public final g:Z

.field public final h:I


# direct methods
.method constructor <init>(Lcom/twitter/library/api/ah;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget-object v0, p1, Lcom/twitter/library/api/ah;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/library/api/ag;->a:Ljava/util/List;

    .line 43
    iget-object v0, p1, Lcom/twitter/library/api/ah;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/library/api/ag;->b:Ljava/util/List;

    .line 44
    iget-object v0, p1, Lcom/twitter/library/api/ah;->c:Lcom/twitter/model/timeline/ai;

    sget-object v1, Lcom/twitter/model/timeline/ai;->a:Lcom/twitter/model/timeline/ai;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ai;

    iput-object v0, p0, Lcom/twitter/library/api/ag;->c:Lcom/twitter/model/timeline/ai;

    .line 45
    iget-object v0, p1, Lcom/twitter/library/api/ah;->d:Lclh;

    iput-object v0, p0, Lcom/twitter/library/api/ag;->d:Lclh;

    .line 46
    iget-object v0, p1, Lcom/twitter/library/api/ah;->e:Lcom/twitter/model/timeline/br;

    iput-object v0, p0, Lcom/twitter/library/api/ag;->e:Lcom/twitter/model/timeline/br;

    .line 47
    iget-object v0, p1, Lcom/twitter/library/api/ah;->f:Lcom/twitter/model/livevideo/d;

    iput-object v0, p0, Lcom/twitter/library/api/ag;->f:Lcom/twitter/model/livevideo/d;

    .line 48
    iget-boolean v0, p1, Lcom/twitter/library/api/ah;->g:Z

    iput-boolean v0, p0, Lcom/twitter/library/api/ag;->g:Z

    .line 49
    iget v0, p1, Lcom/twitter/library/api/ah;->h:I

    iput v0, p0, Lcom/twitter/library/api/ag;->h:I

    .line 50
    return-void
.end method
