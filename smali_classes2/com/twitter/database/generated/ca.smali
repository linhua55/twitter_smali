.class public final Lcom/twitter/database/generated/ca;
.super Lcom/twitter/database/internal/o;
.source "Twttr"

# interfaces
.implements Lbcx;


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

.field private static final c:[Lcom/twitter/database/model/e;

.field private static final d:[Ljava/lang/String;


# instance fields
.field private final e:Lcom/twitter/database/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/database/internal/m",
            "<",
            "Lbcy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-static {}, Lcom/twitter/util/collection/au;->g()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/twitter/database/generated/ca;->b:Ljava/util/Collection;

    .line 34
    new-array v0, v2, [Lcom/twitter/database/model/e;

    sput-object v0, Lcom/twitter/database/generated/ca;->c:[Lcom/twitter/database/model/e;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "business_profile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "last_synced"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/database/generated/ca;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/database/internal/f;)V
    .locals 2
    .annotation build Latx;
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/twitter/database/internal/o;-><init>(Lcom/twitter/database/internal/f;)V

    .line 52
    new-instance v0, Lcom/twitter/database/generated/cd;

    iget-object v1, p0, Lcom/twitter/database/generated/ca;->f_:Lcom/twitter/database/internal/f;

    invoke-direct {v0, p0, v1}, Lcom/twitter/database/generated/cd;-><init>(Lcom/twitter/database/generated/ca;Lcom/twitter/database/internal/f;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ca;->e:Lcom/twitter/database/internal/m;

    .line 53
    return-void
.end method

.method static synthetic g()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/twitter/database/generated/ca;->d:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "business_profiles"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "CREATE TABLE business_profiles (\n\t_id INTEGER PRIMARY KEY,\n\tuser_id INTEGER UNIQUE NOT NULL,\n\tbusiness_profile BLOB /*NULLABLE*/,\n\tlast_synced INTEGER NOT NULL\n);"

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
    sget-object v0, Lcom/twitter/database/generated/ca;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public final d()[Lcom/twitter/database/model/e;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/twitter/database/generated/ca;->c:[Lcom/twitter/database/model/e;

    return-object v0
.end method

.method public final e()Lcom/twitter/database/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/database/internal/m",
            "<",
            "Lbcy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/database/generated/ca;->e:Lcom/twitter/database/internal/m;

    return-object v0
.end method

.method public synthetic f()Lcom/twitter/database/model/q;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/twitter/database/generated/ca;->e()Lcom/twitter/database/internal/m;

    move-result-object v0

    return-object v0
.end method
