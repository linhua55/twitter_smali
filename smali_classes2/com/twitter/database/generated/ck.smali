.class public final Lcom/twitter/database/generated/ck;
.super Lcom/twitter/database/internal/o;
.source "Twttr"

# interfaces
.implements Lbdd;


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
            "Lbde;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 31
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v4}, Ljava/util/LinkedHashSet;-><init>(I)V

    sput-object v0, Lcom/twitter/database/generated/ck;->b:Ljava/util/Collection;

    .line 34
    new-array v0, v6, [Lcom/twitter/database/model/e;

    new-instance v1, Lcom/twitter/database/model/e;

    const-string/jumbo v2, "conversation_entries_conversation_id_index"

    const-string/jumbo v3, "CREATE INDEX conversation_entries_conversation_id_index ON conversation_entries (\n\tconversation_id\n);"

    invoke-direct {v1, v2, v3}, Lcom/twitter/database/model/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/twitter/database/model/e;

    const-string/jumbo v2, "conversation_entries_request_id_index"

    const-string/jumbo v3, "CREATE INDEX conversation_entries_request_id_index ON conversation_entries (\n\trequest_id\n);"

    invoke-direct {v1, v2, v3}, Lcom/twitter/database/model/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/twitter/database/generated/ck;->c:[Lcom/twitter/database/model/e;

    .line 44
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "entry_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "sort_entry_id"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string/jumbo v2, "conversation_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "entry_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "request_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/database/generated/ck;->d:[Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/twitter/database/generated/ck;->b:Ljava/util/Collection;

    const-class v1, Lbdh;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/twitter/database/internal/f;)V
    .locals 2
    .annotation build Latx;
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/twitter/database/internal/o;-><init>(Lcom/twitter/database/internal/f;)V

    .line 66
    new-instance v0, Lcom/twitter/database/generated/cn;

    iget-object v1, p0, Lcom/twitter/database/generated/ck;->f_:Lcom/twitter/database/internal/f;

    invoke-direct {v0, p0, v1}, Lcom/twitter/database/generated/cn;-><init>(Lcom/twitter/database/generated/ck;Lcom/twitter/database/internal/f;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ck;->e:Lcom/twitter/database/internal/m;

    .line 67
    return-void
.end method

.method static synthetic g()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/twitter/database/generated/ck;->d:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "conversation_entries"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "CREATE TABLE conversation_entries (\n\t_id INTEGER PRIMARY KEY,\n\tentry_id INTEGER UNIQUE NOT NULL,\n\tsort_entry_id INTEGER UNIQUE NOT NULL,\n\tconversation_id TEXT,\n\tuser_id INTEGER,\n\tcreated INTEGER,\n\tentry_type INTEGER,\n\tdata BLOB,\n\trequest_id TEXT\n);"

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
    .line 94
    sget-object v0, Lcom/twitter/database/generated/ck;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public final d()[Lcom/twitter/database/model/e;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/twitter/database/generated/ck;->c:[Lcom/twitter/database/model/e;

    return-object v0
.end method

.method public final e()Lcom/twitter/database/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/database/internal/m",
            "<",
            "Lbde;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/twitter/database/generated/ck;->e:Lcom/twitter/database/internal/m;

    return-object v0
.end method

.method public synthetic f()Lcom/twitter/database/model/q;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/twitter/database/generated/ck;->e()Lcom/twitter/database/internal/m;

    move-result-object v0

    return-object v0
.end method
