.class public Lcom/twitter/library/database/dm/d;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/d",
            "<",
            "Lcom/twitter/library/database/dm/d;",
            "Lcom/twitter/library/database/dm/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:J

.field public final i:Z

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Z

.field public final l:Z

.field public final m:Lbnt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/twitter/library/database/dm/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/library/database/dm/g;-><init>(Lcom/twitter/library/database/dm/e;)V

    sput-object v0, Lcom/twitter/library/database/dm/d;->a:Lcom/twitter/util/serialization/d;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/library/database/dm/f;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/twitter/library/database/dm/f;->a(Lcom/twitter/library/database/dm/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/database/dm/d;->b:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/twitter/library/database/dm/f;->b(Lcom/twitter/library/database/dm/f;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/database/dm/d;->c:J

    .line 39
    invoke-static {p1}, Lcom/twitter/library/database/dm/f;->c(Lcom/twitter/library/database/dm/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/database/dm/d;->d:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/twitter/library/database/dm/f;->d(Lcom/twitter/library/database/dm/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/database/dm/d;->e:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/twitter/library/database/dm/f;->e(Lcom/twitter/library/database/dm/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/database/dm/d;->f:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/twitter/library/database/dm/f;->f(Lcom/twitter/library/database/dm/f;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/database/dm/d;->g:Z

    .line 43
    invoke-static {p1}, Lcom/twitter/library/database/dm/f;->g(Lcom/twitter/library/database/dm/f;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/database/dm/d;->h:J

    .line 44
    invoke-static {p1}, Lcom/twitter/library/database/dm/f;->h(Lcom/twitter/library/database/dm/f;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/database/dm/d;->i:Z

    .line 45
    invoke-static {p1}, Lcom/twitter/library/database/dm/f;->i(Lcom/twitter/library/database/dm/f;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/database/dm/d;->j:Ljava/util/List;

    .line 46
    invoke-static {p1}, Lcom/twitter/library/database/dm/f;->j(Lcom/twitter/library/database/dm/f;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/database/dm/d;->k:Z

    .line 47
    invoke-static {p1}, Lcom/twitter/library/database/dm/f;->k(Lcom/twitter/library/database/dm/f;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/database/dm/d;->l:Z

    .line 48
    invoke-static {p1}, Lcom/twitter/library/database/dm/f;->l(Lcom/twitter/library/database/dm/f;)Lbnt;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/database/dm/d;->m:Lbnt;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/database/dm/f;Lcom/twitter/library/database/dm/e;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/twitter/library/database/dm/d;-><init>(Lcom/twitter/library/database/dm/f;)V

    return-void
.end method
