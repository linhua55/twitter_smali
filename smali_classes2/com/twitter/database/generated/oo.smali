.class public final Lcom/twitter/database/generated/oo;
.super Lcom/twitter/database/internal/o;
.source "Twttr"

# interfaces
.implements Lbim;


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
            "Lbin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 35
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v4}, Ljava/util/LinkedHashSet;-><init>(I)V

    sput-object v0, Lcom/twitter/database/generated/oo;->b:Ljava/util/Collection;

    .line 38
    new-array v0, v4, [Lcom/twitter/database/model/e;

    new-instance v1, Lcom/twitter/database/model/e;

    const-string/jumbo v2, "timeline_type_index"

    const-string/jumbo v3, "CREATE INDEX timeline_type_index ON timeline (\n\ttype,\n\tsort_index,\n\tupdated_at\n);"

    invoke-direct {v1, v2, v3}, Lcom/twitter/database/model/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    sput-object v0, Lcom/twitter/database/generated/oo;->c:[Lcom/twitter/database/model/e;

    .line 47
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "owner_id"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "is_preview"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "preview_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "sort_index"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "entity_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "entity_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "data_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "data_type_group"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "data_type_tag"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "timeline_tag"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "timeline_group_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "data_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "data"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "updated_at"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "data_origin_id"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "is_last"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "is_read"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "scribe_content"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "timeline_moment_info"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "dismissed"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "dismiss_actions"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "pinned_header_state"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "dismiss_reason"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "display_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/database/generated/oo;->d:[Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/twitter/database/generated/oo;->b:Ljava/util/Collection;

    const-class v1, Lbio;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/twitter/database/internal/f;)V
    .locals 2
    .annotation build Latx;
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/twitter/database/internal/o;-><init>(Lcom/twitter/database/internal/f;)V

    .line 87
    new-instance v0, Lcom/twitter/database/generated/or;

    iget-object v1, p0, Lcom/twitter/database/generated/oo;->f_:Lcom/twitter/database/internal/f;

    invoke-direct {v0, p0, v1}, Lcom/twitter/database/generated/or;-><init>(Lcom/twitter/database/generated/oo;Lcom/twitter/database/internal/f;)V

    iput-object v0, p0, Lcom/twitter/database/generated/oo;->e:Lcom/twitter/database/internal/m;

    .line 88
    return-void
.end method

.method static synthetic g()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/twitter/database/generated/oo;->d:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "timeline"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string/jumbo v0, "CREATE TABLE timeline (\n\t_id INTEGER PRIMARY KEY AUTOINCREMENT,\n\towner_id INTEGER,\n\ttype INTEGER,\n\tis_preview INTEGER NOT NULL DEFAULT 0,\n\tpreview_id TEXT,\n\tsort_index INTEGER,\n\tentity_id TEXT NOT NULL,\n\tentity_type INTEGER,\n\tdata_type INTEGER,\n\tdata_type_group INTEGER,\n\tdata_type_tag INTEGER,\n\ttimeline_tag TEXT,\n\ttimeline_group_id INTEGER,\n\tdata_id INTEGER,\n\tdata BLOB,\n\tflags INTEGER,\n\tupdated_at INTEGER,\n\tdata_origin_id TEXT,\n\tis_last INTEGER,\n\tis_read INTEGER,\n\tscribe_content BLOB /*NULLABLE*/,\n\ttimeline_moment_info BLOB /*NULLABLE*/,\n\tdismissed INTEGER NOT NULL DEFAULT 0,\n\tdismiss_actions INTEGER NOT NULL DEFAULT 0,\n\tpinned_header_state INTEGER NOT NULL DEFAULT 0,\n\tdismiss_reason INTEGER NOT NULL DEFAULT 0,\n\tdisplay_type TEXT\n);"

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
    .line 133
    sget-object v0, Lcom/twitter/database/generated/oo;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public final d()[Lcom/twitter/database/model/e;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/twitter/database/generated/oo;->c:[Lcom/twitter/database/model/e;

    return-object v0
.end method

.method public final e()Lcom/twitter/database/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/database/internal/m",
            "<",
            "Lbin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/twitter/database/generated/oo;->e:Lcom/twitter/database/internal/m;

    return-object v0
.end method

.method public synthetic f()Lcom/twitter/database/model/q;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/twitter/database/generated/oo;->e()Lcom/twitter/database/internal/m;

    move-result-object v0

    return-object v0
.end method
