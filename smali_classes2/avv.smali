.class public Lavv;
.super Lcom/twitter/app/common/inject/e;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/app/drafts/i;


# direct methods
.method public constructor <init>(Lcom/twitter/app/drafts/i;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/twitter/app/common/inject/e;-><init>()V

    .line 33
    iput-object p1, p0, Lavv;->a:Lcom/twitter/app/drafts/i;

    .line 34
    return-void
.end method

.method static a(Lcom/twitter/database/schema/DraftsSchema;)Lazt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/schema/DraftsSchema;",
            ")",
            "Lazt",
            "<",
            "Lcom/twitter/database/model/g;",
            "Lcmf",
            "<",
            "Lcom/twitter/model/drafts/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 48
    const-class v0, Lcom/twitter/database/schema/a;

    invoke-interface {p0, v0}, Lcom/twitter/database/schema/DraftsSchema;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/schema/a;

    .line 49
    invoke-interface {v0}, Lcom/twitter/database/schema/a;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    .line 50
    new-instance v1, Lbaf;

    new-instance v2, Lbbk;

    invoke-direct {v2}, Lbbk;-><init>()V

    invoke-direct {v1, v0, v2}, Lbaf;-><init>(Lcom/twitter/database/model/q;Lcmx;)V

    return-object v1
.end method


# virtual methods
.method a(Lcom/twitter/app/drafts/n;Lcom/twitter/app/drafts/p;)Lcom/twitter/app/drafts/m;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lavs;

    iget-object v1, p0, Lavv;->a:Lcom/twitter/app/drafts/i;

    iget-wide v2, v1, Lcom/twitter/app/drafts/i;->c:J

    invoke-direct {v0, p1, p2, v2, v3}, Lavs;-><init>(Lcom/twitter/app/drafts/n;Lcom/twitter/app/drafts/p;J)V

    return-object v0
.end method
