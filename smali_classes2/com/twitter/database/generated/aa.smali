.class public final Lcom/twitter/database/generated/aa;
.super Lcom/twitter/database/internal/o;
.source "Twttr"

# interfaces
.implements Lbbt;


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
            "Lbbu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    sput-object v0, Lcom/twitter/database/generated/aa;->b:Ljava/util/Collection;

    .line 33
    new-array v0, v2, [Lcom/twitter/database/model/e;

    sput-object v0, Lcom/twitter/database/generated/aa;->c:[Lcom/twitter/database/model/e;

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "account_id"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "tweet"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "mention"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "unread_interactions"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "message"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/database/generated/aa;->d:[Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/twitter/database/generated/aa;->b:Ljava/util/Collection;

    const-class v1, Lbbv;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/twitter/database/internal/f;)V
    .locals 2
    .annotation build Latx;
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/twitter/database/internal/o;-><init>(Lcom/twitter/database/internal/f;)V

    .line 57
    new-instance v0, Lcom/twitter/database/generated/ad;

    iget-object v1, p0, Lcom/twitter/database/generated/aa;->f_:Lcom/twitter/database/internal/f;

    invoke-direct {v0, p0, v1}, Lcom/twitter/database/generated/ad;-><init>(Lcom/twitter/database/generated/aa;Lcom/twitter/database/internal/f;)V

    iput-object v0, p0, Lcom/twitter/database/generated/aa;->e:Lcom/twitter/database/internal/m;

    .line 58
    return-void
.end method

.method static synthetic g()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/twitter/database/generated/aa;->d:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "activity_states"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "CREATE TABLE activity_states (\n\t_id INTEGER PRIMARY KEY,\n\taccount_id INTEGER UNIQUE ON CONFLICT REPLACE NOT NULL,\n\ttweet INTEGER,\n\tmention INTEGER,\n\tunread_interactions INTEGER,\n\tmessage INTEGER\n);"

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
    .line 82
    sget-object v0, Lcom/twitter/database/generated/aa;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public final d()[Lcom/twitter/database/model/e;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/twitter/database/generated/aa;->c:[Lcom/twitter/database/model/e;

    return-object v0
.end method

.method public final e()Lcom/twitter/database/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/database/internal/m",
            "<",
            "Lbbu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitter/database/generated/aa;->e:Lcom/twitter/database/internal/m;

    return-object v0
.end method

.method public synthetic f()Lcom/twitter/database/model/q;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/twitter/database/generated/aa;->e()Lcom/twitter/database/internal/m;

    move-result-object v0

    return-object v0
.end method
