.class public final Lcom/twitter/database/generated/cw;
.super Lcom/twitter/database/internal/o;
.source "Twttr"

# interfaces
.implements Lbdj;


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
            "Lbdk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v6}, Ljava/util/LinkedHashSet;-><init>(I)V

    sput-object v0, Lcom/twitter/database/generated/cw;->b:Ljava/util/Collection;

    .line 37
    new-array v0, v5, [Lcom/twitter/database/model/e;

    new-instance v1, Lcom/twitter/database/model/e;

    const-string/jumbo v2, "conversations_unique_index"

    const-string/jumbo v3, "CREATE UNIQUE INDEX conversations_unique_index ON conversations (\n\tconversation_id\n);"

    invoke-direct {v1, v2, v3}, Lcom/twitter/database/model/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/twitter/database/generated/cw;->c:[Lcom/twitter/database/model/e;

    .line 44
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "conversation_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "title"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string/jumbo v2, "avatar_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "sort_event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "last_readable_event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "last_read_event_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "sort_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "is_muted"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "min_event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "is_hidden"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "has_more"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "read_only"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "draft_message"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/database/generated/cw;->d:[Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/twitter/database/generated/cw;->b:Ljava/util/Collection;

    const-class v1, Lbdl;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/twitter/database/generated/cw;->b:Ljava/util/Collection;

    const-class v1, Lbdh;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/twitter/database/internal/f;)V
    .locals 2
    .annotation build Latx;
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/twitter/database/internal/o;-><init>(Lcom/twitter/database/internal/f;)V

    .line 73
    new-instance v0, Lcom/twitter/database/generated/cz;

    iget-object v1, p0, Lcom/twitter/database/generated/cw;->f_:Lcom/twitter/database/internal/f;

    invoke-direct {v0, p0, v1}, Lcom/twitter/database/generated/cz;-><init>(Lcom/twitter/database/generated/cw;Lcom/twitter/database/internal/f;)V

    iput-object v0, p0, Lcom/twitter/database/generated/cw;->e:Lcom/twitter/database/internal/m;

    .line 74
    return-void
.end method

.method static synthetic g()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/twitter/database/generated/cw;->d:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string/jumbo v0, "conversations"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "CREATE TABLE conversations (\n\t_id INTEGER PRIMARY KEY,\n\tconversation_id TEXT UNIQUE NOT NULL,\n\ttitle TEXT,\n\tavatar_url TEXT,\n\ttype INTEGER,\n\tsort_event_id INTEGER,\n\tlast_readable_event_id INTEGER,\n\tlast_read_event_id INTEGER,\n\tsort_timestamp INTEGER,\n\tis_muted INTEGER,\n\tmin_event_id INTEGER,\n\tis_hidden INTEGER,\n\thas_more INTEGER,\n\tread_only INTEGER,\n\tdraft_message BLOB /*NULLABLE*/\n);"

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
    .line 107
    sget-object v0, Lcom/twitter/database/generated/cw;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public final d()[Lcom/twitter/database/model/e;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/twitter/database/generated/cw;->c:[Lcom/twitter/database/model/e;

    return-object v0
.end method

.method public final e()Lcom/twitter/database/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/database/internal/m",
            "<",
            "Lbdk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/database/generated/cw;->e:Lcom/twitter/database/internal/m;

    return-object v0
.end method

.method public synthetic f()Lcom/twitter/database/model/q;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/twitter/database/generated/cw;->e()Lcom/twitter/database/internal/m;

    move-result-object v0

    return-object v0
.end method
