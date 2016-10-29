.class public final Lcom/twitter/database/generated/ak;
.super Lcom/twitter/database/internal/o;
.source "Twttr"

# interfaces
.implements Lbbz;


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
            "Lbca;",
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

    .line 34
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    sput-object v0, Lcom/twitter/database/generated/ak;->b:Ljava/util/Collection;

    .line 37
    new-array v0, v2, [Lcom/twitter/database/model/e;

    sput-object v0, Lcom/twitter/database/generated/ak;->c:[Lcom/twitter/database/model/e;

    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "generic_activity_id"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "created_at"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "hash_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "generic_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "display_text"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "display_text_bold_index_list"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "social_proof_text"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "social_proof_bold_index_list"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "icon_identifier"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "dismiss_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "tap_through_action"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "feedback_token"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "facepile_user_ids"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "context_tweet_ids"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "context_user_ids"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/database/generated/ak;->d:[Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/twitter/database/generated/ak;->b:Ljava/util/Collection;

    const-class v1, Lbcf;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/twitter/database/internal/f;)V
    .locals 2
    .annotation build Latx;
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/twitter/database/internal/o;-><init>(Lcom/twitter/database/internal/f;)V

    .line 71
    new-instance v0, Lcom/twitter/database/generated/an;

    iget-object v1, p0, Lcom/twitter/database/generated/ak;->f_:Lcom/twitter/database/internal/f;

    invoke-direct {v0, p0, v1}, Lcom/twitter/database/generated/an;-><init>(Lcom/twitter/database/generated/ak;Lcom/twitter/database/internal/f;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ak;->e:Lcom/twitter/database/internal/m;

    .line 72
    return-void
.end method

.method static synthetic g()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/twitter/database/generated/ak;->d:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "generic_activities"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, "CREATE TABLE generic_activities (\n\t_id INTEGER PRIMARY KEY,\n\tgeneric_activity_id INTEGER NOT NULL,\n\tcreated_at INTEGER NOT NULL,\n\thash_key TEXT,\n\tgeneric_type TEXT NOT NULL,\n\tdisplay_text TEXT NOT NULL,\n\tdisplay_text_bold_index_list BLOB /*NULLABLE*/,\n\tsocial_proof_text TEXT,\n\tsocial_proof_bold_index_list BLOB /*NULLABLE*/,\n\ticon_identifier INTEGER DEFAULT 0,\n\tdismiss_type TEXT,\n\ttap_through_action TEXT,\n\tfeedback_token TEXT,\n\tfacepile_user_ids BLOB /*NULLABLE*/,\n\tcontext_tweet_ids BLOB /*NULLABLE*/,\n\tcontext_user_ids BLOB /*NULLABLE*/,\n\tUNIQUE (generic_activity_id) ON CONFLICT REPLACE\n);"

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
    sget-object v0, Lcom/twitter/database/generated/ak;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public final d()[Lcom/twitter/database/model/e;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/twitter/database/generated/ak;->c:[Lcom/twitter/database/model/e;

    return-object v0
.end method

.method public final e()Lcom/twitter/database/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/database/internal/m",
            "<",
            "Lbca;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/database/generated/ak;->e:Lcom/twitter/database/internal/m;

    return-object v0
.end method

.method public synthetic f()Lcom/twitter/database/model/q;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/twitter/database/generated/ak;->e()Lcom/twitter/database/internal/m;

    move-result-object v0

    return-object v0
.end method
