.class public abstract Lcom/twitter/model/dms/n;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:J

.field public b:Ljava/lang/String;

.field public c:Lcom/twitter/model/core/bm;

.field public d:Lcom/twitter/model/dms/i;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Z

.field public final h:I


# direct methods
.method protected constructor <init>(Lcom/twitter/model/dms/p;)V
    .locals 2

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    invoke-static {p1}, Lcom/twitter/model/dms/p;->a(Lcom/twitter/model/dms/p;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/dms/n;->a:J

    .line 272
    invoke-static {p1}, Lcom/twitter/model/dms/p;->b(Lcom/twitter/model/dms/p;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/dms/n;->b:Ljava/lang/String;

    .line 273
    invoke-static {p1}, Lcom/twitter/model/dms/p;->c(Lcom/twitter/model/dms/p;)Lcom/twitter/model/core/bm;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/bm;->a:Lcom/twitter/model/core/bm;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/model/dms/n;->c:Lcom/twitter/model/core/bm;

    .line 274
    invoke-static {p1}, Lcom/twitter/model/dms/p;->d(Lcom/twitter/model/dms/p;)Lcom/twitter/model/dms/i;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/dms/n;->d:Lcom/twitter/model/dms/i;

    .line 275
    invoke-static {p1}, Lcom/twitter/model/dms/p;->e(Lcom/twitter/model/dms/p;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/dms/n;->e:Ljava/lang/String;

    .line 276
    invoke-static {p1}, Lcom/twitter/model/dms/p;->f(Lcom/twitter/model/dms/p;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/dms/n;->f:Z

    .line 277
    invoke-static {p1}, Lcom/twitter/model/dms/p;->g(Lcom/twitter/model/dms/p;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/dms/n;->g:Z

    .line 278
    invoke-static {p1}, Lcom/twitter/model/dms/p;->h(Lcom/twitter/model/dms/p;)I

    move-result v0

    iput v0, p0, Lcom/twitter/model/dms/n;->h:I

    .line 279
    return-void
.end method
