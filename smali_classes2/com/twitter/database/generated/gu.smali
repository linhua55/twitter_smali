.class public final Lcom/twitter/database/generated/gu;
.super Lcom/twitter/database/internal/o;
.source "Twttr"

# interfaces
.implements Lbex;


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
            "Lbey;",
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

    .line 33
    invoke-static {}, Lcom/twitter/util/collection/au;->g()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/twitter/database/generated/gu;->b:Ljava/util/Collection;

    .line 36
    new-array v0, v5, [Lcom/twitter/database/model/e;

    new-instance v1, Lcom/twitter/database/model/e;

    const-string/jumbo v2, "live_video_events_event_id_index"

    const-string/jumbo v3, "CREATE INDEX live_video_events_event_id_index ON live_video_events (\n\tevent_id\n);"

    invoke-direct {v1, v2, v3}, Lcom/twitter/database/model/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/twitter/database/generated/gu;->c:[Lcom/twitter/database/model/e;

    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "event_id"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string/jumbo v2, "owner_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "start_time"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "end_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "subtitle"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "hashtag"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "broadcast"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "semantic_core_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "updated_at"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "placeholder_variants"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/database/generated/gu;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/database/internal/f;)V
    .locals 2
    .annotation build Latx;
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/twitter/database/internal/o;-><init>(Lcom/twitter/database/internal/f;)V

    .line 64
    new-instance v0, Lcom/twitter/database/generated/gx;

    iget-object v1, p0, Lcom/twitter/database/generated/gu;->f_:Lcom/twitter/database/internal/f;

    invoke-direct {v0, p0, v1}, Lcom/twitter/database/generated/gx;-><init>(Lcom/twitter/database/generated/gu;Lcom/twitter/database/internal/f;)V

    iput-object v0, p0, Lcom/twitter/database/generated/gu;->e:Lcom/twitter/database/internal/m;

    .line 65
    return-void
.end method

.method static synthetic g()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/twitter/database/generated/gu;->d:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "live_video_events"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string/jumbo v0, "CREATE TABLE live_video_events (\n\t_id INTEGER PRIMARY KEY,\n\tevent_id INTEGER UNIQUE ON CONFLICT REPLACE,\n\towner_id INTEGER NOT NULL,\n\tstart_time INTEGER NOT NULL,\n\tend_time INTEGER NOT NULL,\n\ttitle TEXT NOT NULL,\n\tsubtitle TEXT,\n\thashtag TEXT NOT NULL,\n\tbroadcast BLOB NOT NULL,\n\tsemantic_core_id TEXT,\n\tupdated_at INTEGER NOT NULL,\n\tplaceholder_variants BLOB NOT NULL\n);"

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
    .line 95
    sget-object v0, Lcom/twitter/database/generated/gu;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public final d()[Lcom/twitter/database/model/e;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/twitter/database/generated/gu;->c:[Lcom/twitter/database/model/e;

    return-object v0
.end method

.method public final e()Lcom/twitter/database/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/database/internal/m",
            "<",
            "Lbey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/twitter/database/generated/gu;->e:Lcom/twitter/database/internal/m;

    return-object v0
.end method

.method public synthetic f()Lcom/twitter/database/model/q;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/twitter/database/generated/gu;->e()Lcom/twitter/database/internal/m;

    move-result-object v0

    return-object v0
.end method
