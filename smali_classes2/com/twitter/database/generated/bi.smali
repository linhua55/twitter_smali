.class public final Lcom/twitter/database/generated/bi;
.super Lcom/twitter/database/internal/o;
.source "Twttr"

# interfaces
.implements Lbcn;


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
            "Lbco;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    invoke-static {}, Lcom/twitter/util/collection/au;->g()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/twitter/database/generated/bi;->b:Ljava/util/Collection;

    .line 35
    new-array v0, v5, [Lcom/twitter/database/model/e;

    new-instance v1, Lcom/twitter/database/model/e;

    const-string/jumbo v2, "alerts_alert_id_index"

    const-string/jumbo v3, "CREATE INDEX alerts_alert_id_index ON alerts (\n\talert_id\n);"

    invoke-direct {v1, v2, v3}, Lcom/twitter/database/model/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/twitter/database/generated/bi;->c:[Lcom/twitter/database/model/e;

    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "alert_id"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string/jumbo v2, "updated_at"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "region"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "senders_ids"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "is_muted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/database/generated/bi;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/database/internal/f;)V
    .locals 2
    .annotation build Latx;
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/twitter/database/internal/o;-><init>(Lcom/twitter/database/internal/f;)V

    .line 59
    new-instance v0, Lcom/twitter/database/generated/bl;

    iget-object v1, p0, Lcom/twitter/database/generated/bi;->f_:Lcom/twitter/database/internal/f;

    invoke-direct {v0, p0, v1}, Lcom/twitter/database/generated/bl;-><init>(Lcom/twitter/database/generated/bi;Lcom/twitter/database/internal/f;)V

    iput-object v0, p0, Lcom/twitter/database/generated/bi;->e:Lcom/twitter/database/internal/m;

    .line 60
    return-void
.end method

.method static synthetic g()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/twitter/database/generated/bi;->d:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "alerts"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "CREATE TABLE alerts (\n\t_id INTEGER PRIMARY KEY,\n\talert_id INTEGER UNIQUE ON CONFLICT REPLACE NOT NULL,\n\tupdated_at INTEGER NOT NULL,\n\ttitle TEXT NOT NULL,\n\ttype INTEGER NOT NULL,\n\tregion TEXT NOT NULL,\n\tsenders_ids BLOB NOT NULL,\n\tis_muted INTEGER\n);"

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
    .line 86
    sget-object v0, Lcom/twitter/database/generated/bi;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public final d()[Lcom/twitter/database/model/e;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/twitter/database/generated/bi;->c:[Lcom/twitter/database/model/e;

    return-object v0
.end method

.method public final e()Lcom/twitter/database/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/database/internal/m",
            "<",
            "Lbco;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/database/generated/bi;->e:Lcom/twitter/database/internal/m;

    return-object v0
.end method

.method public synthetic f()Lcom/twitter/database/model/q;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/twitter/database/generated/bi;->e()Lcom/twitter/database/internal/m;

    move-result-object v0

    return-object v0
.end method
