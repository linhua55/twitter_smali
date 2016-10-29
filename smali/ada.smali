.class Lada;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbtl;


# instance fields
.field final synthetic a:Lacy;

.field private final b:Lcom/twitter/library/provider/dm;


# direct methods
.method private constructor <init>(Lacy;Lcom/twitter/library/provider/dm;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lada;->a:Lacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lada;->b:Lcom/twitter/library/provider/dm;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lacy;Lcom/twitter/library/provider/dm;Lacz;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lada;-><init>(Lacy;Lcom/twitter/library/provider/dm;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/network/HttpOperation;",
            "Lcom/twitter/library/service/aa;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 68
    if-eqz p3, :cond_0

    .line 69
    iget-object v0, p0, Lada;->b:Lcom/twitter/library/provider/dm;

    iget-object v1, p0, Lada;->a:Lacy;

    invoke-static {v1}, Lacy;->a(Lacy;)Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    const/16 v4, 0x21

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v13}, Lcom/twitter/library/provider/dm;->a(Ljava/util/Collection;JIJZZZLjava/lang/String;ZLcom/twitter/library/provider/b;Z)Ljava/util/Collection;

    .line 72
    :cond_0
    return-void
.end method
