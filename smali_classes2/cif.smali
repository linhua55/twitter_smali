.class public Lcif;
.super Lcom/twitter/library/service/o;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Z

.field private final g:I

.field private final i:Lcom/twitter/library/provider/r;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;IZILcom/twitter/library/provider/r;)V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcif;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 32
    iput-object p3, p0, Lcif;->a:Ljava/lang/String;

    .line 33
    iput p4, p0, Lcif;->b:I

    .line 34
    iput-boolean p5, p0, Lcif;->c:Z

    .line 35
    iput p6, p0, Lcif;->g:I

    .line 37
    invoke-virtual {p0}, Lcif;->s()Lcom/twitter/library/provider/dm;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/provider/r;->a(Landroid/database/sqlite/SQLiteOpenHelper;)Lcom/twitter/library/provider/r;

    move-result-object v0

    .line 36
    invoke-static {p7, v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/provider/r;

    iput-object v0, p0, Lcif;->i:Lcom/twitter/library/provider/r;

    .line 38
    sget-object v0, Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;->c:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    invoke-virtual {p0, v0}, Lcif;->a(Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;)V

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;IZI)Lcif;
    .locals 7

    .prologue
    .line 59
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcif;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;IZILcom/twitter/library/provider/r;)Lcif;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;IZILcom/twitter/library/provider/r;)Lcif;
    .locals 8

    .prologue
    .line 67
    if-eqz p6, :cond_0

    .line 68
    invoke-static {}, Lcom/twitter/util/h;->d()V

    .line 70
    :cond_0
    new-instance v0, Lcif;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcif;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;IZILcom/twitter/library/provider/r;)V

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 6

    .prologue
    .line 49
    invoke-virtual {p0}, Lcif;->b()Lcom/twitter/library/provider/b;

    move-result-object v5

    .line 50
    iget-object v0, p0, Lcif;->i:Lcom/twitter/library/provider/r;

    iget-object v1, p0, Lcif;->a:Ljava/lang/String;

    iget v2, p0, Lcif;->b:I

    iget-boolean v3, p0, Lcif;->c:Z

    iget v4, p0, Lcif;->g:I

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/provider/r;->a(Ljava/lang/String;IZILcom/twitter/library/provider/b;)I

    .line 52
    invoke-virtual {v5}, Lcom/twitter/library/provider/b;->a()V

    .line 53
    return-void
.end method

.method b()Lcom/twitter/library/provider/b;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lcif;->t()Lcom/twitter/library/provider/b;

    move-result-object v0

    return-object v0
.end method
