.class public final Lcom/twitter/database/generated/ml;
.super Lcom/twitter/database/internal/q;
.source "Twttr"

# interfaces
.implements Lbhm;


# static fields
.field private static final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:[Ljava/lang/String;


# instance fields
.field private final d:Lcom/twitter/database/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/database/internal/m",
            "<",
            "Lbhn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    invoke-static {}, Lcom/twitter/util/collection/au;->g()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/twitter/database/generated/ml;->b:Ljava/util/Collection;

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "tokens_text"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "tokens_weight"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "tokens_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "tokens_ref_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "search_queries_query"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/database/generated/ml;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/database/internal/f;)V
    .locals 2
    .annotation build Latx;
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/twitter/database/internal/q;-><init>(Lcom/twitter/database/internal/f;)V

    .line 47
    new-instance v0, Lcom/twitter/database/generated/mo;

    iget-object v1, p0, Lcom/twitter/database/generated/ml;->f_:Lcom/twitter/database/internal/f;

    invoke-direct {v0, p0, v1}, Lcom/twitter/database/generated/mo;-><init>(Lcom/twitter/database/generated/ml;Lcom/twitter/database/internal/f;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ml;->d:Lcom/twitter/database/internal/m;

    .line 48
    return-void
.end method

.method static synthetic e()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/twitter/database/generated/ml;->c:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "tokens_topic_view"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "CREATE VIEW tokens_topic_view\n\tAS SELECT\n\t\ttokens._id AS _id,\n\t\ttokens.text AS tokens_text,\n\t\ttokens.weight AS tokens_weight,\n\t\ttokens.type AS tokens_type,\n\t\ttokens.ref_id AS tokens_ref_id,\n\t\tsearch_queries.query AS search_queries_query\n\tFROM tokens\n\tLEFT OUTER JOIN search_queries AS search_queries ON tokens.ref_id=search_queries._id\n\tWHERE tokens.type=3;"

    return-object v0
.end method

.method protected final c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/twitter/database/generated/ml;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public final d()Lcom/twitter/database/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/database/internal/m",
            "<",
            "Lbhn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/database/generated/ml;->d:Lcom/twitter/database/internal/m;

    return-object v0
.end method

.method public synthetic f()Lcom/twitter/database/model/q;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/twitter/database/generated/ml;->d()Lcom/twitter/database/internal/m;

    move-result-object v0

    return-object v0
.end method
