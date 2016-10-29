.class public Lcom/twitter/android/provider/SuggestionsProvider;
.super Landroid/content/ContentProvider;
.source "Twttr"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/net/Uri;

.field public static final h:Landroid/net/Uri;

.field public static final i:Landroid/net/Uri;

.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/library/api/search/TwitterTypeAheadGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/api/search/TwitterTypeAhead;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/api/search/TwitterTypeAhead;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Landroid/content/UriMatcher;

.field private static final q:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".provider.SuggestionsProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->a:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->b:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "compose_users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->c:Landroid/net/Uri;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "hashtags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->d:Landroid/net/Uri;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dmableusers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->e:Landroid/net/Uri;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dmsharetweetusers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->f:Landroid/net/Uri;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "locations"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->g:Landroid/net/Uri;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->h:Landroid/net/Uri;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "search_suggest_query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->i:Landroid/net/Uri;

    .line 148
    const-string/jumbo v0, "[\\w ]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->j:Ljava/util/regex/Pattern;

    .line 153
    const-string/jumbo v0, "\\A@?#?\\w+\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->k:Ljava/util/regex/Pattern;

    .line 187
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const-string/jumbo v1, "s_type"

    aput-object v1, v0, v3

    const-string/jumbo v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "suggest_intent_query"

    aput-object v1, v0, v5

    const-string/jumbo v1, "suggest_intent_action"

    aput-object v1, v0, v6

    const-string/jumbo v1, "suggest_text_2"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string/jumbo v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "filter_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "filter_location"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "filter_follow"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "user_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "image_url"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "user_verified"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "customer_service_state"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "friendship"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "soc_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->q:[Ljava/lang/String;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->l:Ljava/util/Map;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->m:Ljava/util/Map;

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->n:Ljava/util/Map;

    .line 212
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->p:Landroid/content/UriMatcher;

    .line 213
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->p:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->a:Ljava/lang/String;

    const-string/jumbo v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->p:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->a:Ljava/lang/String;

    const-string/jumbo v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->p:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->a:Ljava/lang/String;

    const-string/jumbo v2, "search_suggest_shortcut"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->p:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->a:Ljava/lang/String;

    const-string/jumbo v2, "search_suggest_shortcut/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->p:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->a:Ljava/lang/String;

    const-string/jumbo v2, "compose_users"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->p:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->a:Ljava/lang/String;

    const-string/jumbo v2, "compose_users/*"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->p:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->a:Ljava/lang/String;

    const-string/jumbo v2, "hashtags"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->p:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->a:Ljava/lang/String;

    const-string/jumbo v2, "hashtags/*"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 221
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->p:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->a:Ljava/lang/String;

    const-string/jumbo v2, "locations"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->p:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->a:Ljava/lang/String;

    const-string/jumbo v2, "dmableusers"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->p:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->a:Ljava/lang/String;

    const-string/jumbo v2, "dmableusers/*"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 224
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->p:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->a:Ljava/lang/String;

    const-string/jumbo v2, "dmsharetweetusers"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->p:Landroid/content/UriMatcher;

    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->a:Ljava/lang/String;

    const-string/jumbo v2, "users"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->o:Ljava/util/Map;

    .line 228
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->o:Ljava/util/Map;

    const-string/jumbo v1, "news"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->o:Ljava/util/Map;

    const-string/jumbo v1, "users"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->o:Ljava/util/Map;

    const-string/jumbo v1, "images"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->o:Ljava/util/Map;

    const-string/jumbo v1, "videos"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/database/MatrixCursor;ILcom/twitter/android/provider/s;)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1073
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 1074
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1075
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1076
    const v1, 0x7f0a073e

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p3, Lcom/twitter/android/provider/s;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1077
    iget-object v1, p3, Lcom/twitter/android/provider/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1078
    const-string/jumbo v1, "com.twitter.android.action.USER_SHOW"

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1079
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method private static a(Landroid/content/Context;Landroid/database/MatrixCursor;ILcom/twitter/android/provider/s;Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/MatrixCursor;",
            "I",
            "Lcom/twitter/android/provider/s;",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/android/provider/s;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1093
    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    invoke-interface {p4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1095
    iget-object v0, p3, Lcom/twitter/android/provider/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1096
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 1097
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1098
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1099
    const v2, 0x7f0a073c

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1100
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1101
    const-string/jumbo v0, "com.twitter.android.action.SEARCH"

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1102
    add-int/lit8 p2, p2, 0x1

    .line 1104
    :cond_0
    return p2
.end method

.method private static a(Landroid/database/MatrixCursor;ILandroid/database/Cursor;Ljava/util/Set;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/MatrixCursor;",
            "I",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/android/provider/s;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 1119
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_1

    .line 1157
    :cond_0
    :goto_0
    return p1

    :cond_1
    move v0, v1

    .line 1125
    :cond_2
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1126
    if-eqz v2, :cond_5

    .line 1149
    :cond_3
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1151
    :cond_4
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1152
    if-nez v0, :cond_0

    .line 1155
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 1130
    :cond_5
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1131
    new-instance v3, Lcom/twitter/android/provider/s;

    invoke-direct {v3, v2}, Lcom/twitter/android/provider/s;-><init>(Ljava/lang/String;)V

    .line 1132
    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1133
    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1134
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 1135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1136
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1137
    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1138
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1139
    const-string/jumbo v2, "com.twitter.android.action.SEARCH_RECENT"

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1140
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1141
    sget-object v2, Lcom/twitter/library/provider/de;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1142
    const-string/jumbo v4, "type"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1143
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1144
    add-int/lit8 p1, p1, 0x1

    .line 1145
    add-int/lit8 v0, v0, 0x1

    .line 1147
    :cond_6
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    if-lt v0, p4, :cond_2

    goto :goto_1
.end method

.method private static a(Landroid/database/MatrixCursor;ILjava/util/List;Ljava/util/Set;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/MatrixCursor;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/api/search/TwitterTypeAhead;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/android/provider/s;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 1230
    .line 1231
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/search/TwitterTypeAhead;

    .line 1232
    if-lt v2, p4, :cond_1

    .line 1264
    :cond_0
    return p1

    .line 1237
    :cond_1
    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->o:Ljava/util/Map;

    iget-object v5, v0, Lcom/twitter/library/api/search/TwitterTypeAhead;->f:Lcom/twitter/library/api/search/TwitterSearchQuery;

    iget-object v5, v5, Lcom/twitter/library/api/search/TwitterSearchQuery;->l:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    .line 1243
    :goto_1
    new-instance v5, Lcom/twitter/android/provider/s;

    iget-object v6, v0, Lcom/twitter/library/api/search/TwitterTypeAhead;->f:Lcom/twitter/library/api/search/TwitterSearchQuery;

    iget-object v6, v6, Lcom/twitter/library/api/search/TwitterSearchQuery;->b:Ljava/lang/String;

    invoke-direct {v5, v6, v1}, Lcom/twitter/android/provider/s;-><init>(Ljava/lang/String;I)V

    .line 1244
    invoke-interface {p3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1245
    invoke-interface {p3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1246
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    .line 1247
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1248
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1250
    iget-object v6, v0, Lcom/twitter/library/api/search/TwitterTypeAhead;->f:Lcom/twitter/library/api/search/TwitterSearchQuery;

    iget-object v6, v6, Lcom/twitter/library/api/search/TwitterSearchQuery;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1251
    iget-object v6, v0, Lcom/twitter/library/api/search/TwitterTypeAhead;->f:Lcom/twitter/library/api/search/TwitterSearchQuery;

    iget-object v6, v6, Lcom/twitter/library/api/search/TwitterSearchQuery;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1252
    const-string/jumbo v6, "com.twitter.android.action.SEARCH_TYPEAHEAD_TOPIC"

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1253
    invoke-virtual {v5, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1254
    invoke-virtual {v5, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1255
    const-wide/16 v6, -0x1

    iget-object v0, v0, Lcom/twitter/library/api/search/TwitterTypeAhead;->f:Lcom/twitter/library/api/search/TwitterSearchQuery;

    iget-object v0, v0, Lcom/twitter/library/api/search/TwitterSearchQuery;->b:Ljava/lang/String;

    const/16 v8, 0xc

    invoke-static {v6, v7, v0, v8, p1}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLjava/lang/String;II)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 1257
    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1258
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1260
    add-int/lit8 p1, p1, 0x1

    .line 1261
    add-int/lit8 v0, v2, 0x1

    :goto_2
    move v2, v0

    .line 1263
    goto :goto_0

    .line 1240
    :cond_2
    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->o:Ljava/util/Map;

    iget-object v5, v0, Lcom/twitter/library/api/search/TwitterTypeAhead;->f:Lcom/twitter/library/api/search/TwitterSearchQuery;

    iget-object v5, v5, Lcom/twitter/library/api/search/TwitterSearchQuery;->l:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/MatrixCursor;ILjava/lang/String;Ljava/util/Set;IZ)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/database/MatrixCursor;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/android/provider/s;",
            ">;IZ)I"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 1369
    const-string/jumbo v1, "search_queries"

    sget-object v2, Lcom/twitter/android/provider/w;->a:[Ljava/lang/String;

    const-string/jumbo v3, "cluster_titles NOT NULL"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1372
    if-eqz v3, :cond_3

    move v1, v8

    move v2, p2

    .line 1375
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ge v1, p5, :cond_1

    .line 1376
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1377
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1378
    sget-object v6, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    .line 1379
    invoke-static {v6}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v6

    .line 1378
    invoke-static {v0, v6}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1381
    if-eqz v0, :cond_0

    .line 1382
    invoke-static {p3, v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1386
    :goto_1
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1387
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    .line 1388
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1389
    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1390
    invoke-virtual {v6, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1391
    invoke-virtual {v6, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1392
    const-string/jumbo v7, "com.twitter.android.action.SEARCH_TREND"

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1393
    invoke-virtual {v6, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1395
    add-int/lit8 v2, v2, 0x1

    .line 1396
    new-instance v0, Lcom/twitter/android/provider/s;

    invoke-direct {v0, v5}, Lcom/twitter/android/provider/s;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1397
    add-int/lit8 v0, v1, 0x1

    move v1, v2

    :goto_2
    move v2, v1

    move v1, v0

    .line 1399
    goto :goto_0

    :cond_0
    move-object v0, v4

    .line 1384
    goto :goto_1

    .line 1401
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1404
    :goto_3
    return v2

    .line 1401
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_2

    :cond_3
    move v2, p2

    goto :goto_3
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/MatrixCursor;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/database/MatrixCursor;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/android/provider/s;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1019
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->size()I

    move-result v2

    move/from16 v0, p7

    if-ge v2, v0, :cond_3

    .line 1020
    const/4 v3, 0x1

    const-string/jumbo v4, "tokens_user_view"

    sget-object v5, Lcom/twitter/android/provider/v;->a:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v2, 0x64

    .line 1022
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object v2, p0

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    .line 1020
    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1023
    if-eqz v2, :cond_3

    .line 1024
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->size()I

    move-result v3

    move/from16 v0, p7

    if-ge v3, v0, :cond_2

    .line 1025
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1026
    new-instance v4, Lcom/twitter/android/provider/s;

    invoke-direct {v4, v3}, Lcom/twitter/android/provider/s;-><init>(Ljava/lang/String;)V

    .line 1027
    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1028
    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1029
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 1030
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1031
    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1032
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1033
    invoke-virtual {v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1034
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1035
    const/4 v6, 0x1

    if-ne v6, v5, :cond_1

    .line 1036
    const-string/jumbo v5, "com.twitter.android.action.USER_SHOW_TYPEAHEAD"

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1040
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1041
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1042
    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1043
    const/4 v3, 0x0

    const/4 v5, 0x3

    invoke-static {v6, v7, v3, v5, p2}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLjava/lang/String;II)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v3

    .line 1045
    invoke-virtual {v3}, Lcom/twitter/library/scribe/TwitterScribeItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1046
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1047
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1048
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1049
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1050
    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1051
    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1052
    const/16 v3, 0x8

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1053
    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1054
    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1055
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 1038
    :cond_1
    const-string/jumbo v5, "com.twitter.android.action.USER_SHOW_SEARCH_SUGGESTION"

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 1058
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1061
    :cond_3
    return p2
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Lcom/twitter/library/provider/ParcelableMatrixCursor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/database/Cursor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/twitter/library/provider/ParcelableMatrixCursor;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/android/provider/s;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 674
    const-string/jumbo v1, "locations"

    sget-object v2, Lcom/twitter/android/provider/q;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 676
    if-eqz v0, :cond_3

    .line 677
    invoke-virtual {p0}, Lcom/twitter/android/provider/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 678
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 679
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 680
    new-instance v3, Lcom/twitter/android/provider/s;

    invoke-direct {v3, v2}, Lcom/twitter/android/provider/s;-><init>(Ljava/lang/String;)V

    .line 681
    invoke-interface {p6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 682
    invoke-interface {p6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-virtual {p2}, Lcom/twitter/library/provider/ParcelableMatrixCursor;->a()Lcom/twitter/library/provider/ce;

    move-result-object v3

    .line 684
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/twitter/library/provider/ce;->a(Ljava/lang/Object;)Lcom/twitter/library/provider/ce;

    .line 685
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/twitter/library/provider/ce;->a(Ljava/lang/Object;)Lcom/twitter/library/provider/ce;

    .line 686
    invoke-virtual {v3, v2}, Lcom/twitter/library/provider/ce;->a(Ljava/lang/Object;)Lcom/twitter/library/provider/ce;

    .line 687
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 688
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 689
    const v5, 0x7f0a08dc

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v4, v6, v2

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/twitter/library/provider/ce;->a(Ljava/lang/Object;)Lcom/twitter/library/provider/ce;

    goto :goto_0

    .line 691
    :cond_1
    invoke-virtual {v3, v2}, Lcom/twitter/library/provider/ce;->a(Ljava/lang/Object;)Lcom/twitter/library/provider/ce;

    goto :goto_0

    .line 695
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 697
    :cond_3
    return-object p2
.end method

.method private a(Ljava/lang/String;IZ)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/16 v8, 0x29

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 550
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x40

    if-eq v3, v4, :cond_0

    move v0, v1

    .line 551
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/twitter/library/util/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x25

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 554
    const-string/jumbo v6, "(users_username LIKE "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    if-eqz v0, :cond_1

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "% "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    const-string/jumbo v3, " OR users_name LIKE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " OR "

    .line 559
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "users_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " LIKE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 563
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/provider/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 564
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    .line 565
    if-eqz p2, :cond_5

    .line 566
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 567
    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_3
    const-string/jumbo v3, "(users_friendship&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 570
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    if-eqz p3, :cond_4

    .line 572
    const-string/jumbo v3, " OR users_user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 574
    :cond_4
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 578
    :goto_0
    invoke-static {v0, v6, v7}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/provider/dm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v2, "tokens_user_view"

    sget-object v3, Lcom/twitter/android/provider/v;->a:[Ljava/lang/String;

    const-string/jumbo v8, "tokens_weight DESC, LOWER(users_username) ASC"

    move-object v6, v5

    move-object v7, v5

    move-object v9, v5

    .line 579
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 578
    return-object v0

    :cond_6
    move-object v4, v5

    .line 577
    goto :goto_0
.end method

.method private a(Ljava/lang/String;IZZZLjava/util/List;Ldau;)Landroid/database/Cursor;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ldau",
            "<",
            "Lcom/twitter/library/api/search/TwitterTypeAhead;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 425
    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/twitter/android/provider/y;->a:[Ljava/lang/String;

    invoke-direct {v5, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lcom/twitter/android/client/bu;->g()I

    move-result v15

    .line 428
    if-eqz p6, :cond_5

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 429
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v5, v1, v15}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/MatrixCursor;Ljava/util/List;I)Ljava/util/Set;

    move-result-object v4

    move-object v14, v4

    .line 433
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Ljava/lang/String;IZ)Landroid/database/Cursor;

    move-result-object v16

    .line 434
    if-eqz v16, :cond_2

    .line 435
    :cond_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 436
    const/4 v4, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 437
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 438
    const/4 v4, 0x1

    .line 439
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    .line 440
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x4

    .line 441
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x5

    .line 442
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v4, 0x6

    .line 443
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/16 v4, 0x8

    .line 444
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p0

    .line 438
    invoke-direct/range {v4 .. v13}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 445
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->getCount()I

    move-result v4

    if-lt v4, v15, :cond_0

    .line 452
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 455
    :cond_2
    if-eqz p3, :cond_3

    .line 456
    invoke-static/range {p1 .. p1}, Lcom/twitter/library/util/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v4, p0

    move v7, v15

    move-object v8, v14

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v9}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/MatrixCursor;Ljava/lang/String;ILjava/util/Set;Ldau;)V

    .line 459
    :cond_3
    if-eqz p5, :cond_4

    .line 460
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 462
    :cond_4
    return-object v5

    .line 431
    :cond_5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v14, v4

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/twitter/library/api/search/TwitterTypeAheadGroup;
    .locals 3

    .prologue
    .line 755
    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->l:Ljava/util/Map;

    monitor-enter v1

    .line 756
    :try_start_0
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->l:Ljava/util/Map;

    invoke-static {p0}, Lcom/twitter/android/provider/SuggestionsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/search/TwitterTypeAheadGroup;

    monitor-exit v1

    return-object v0

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/database/MatrixCursor;Ljava/util/List;I)Ljava/util/Set;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/MatrixCursor;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/provider/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 467
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 468
    invoke-virtual/range {p1 .. p1}, Landroid/database/MatrixCursor;->getCount()I

    move-result v3

    move/from16 v0, p3

    if-ge v3, v0, :cond_3

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    .line 470
    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "friendship"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " <> 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 472
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    .line 473
    invoke-static {v2, v6, v7}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v2

    .line 474
    invoke-virtual {v2}, Lcom/twitter/library/provider/dm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "users"

    sget-object v4, Lcom/twitter/android/provider/y;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 476
    if-eqz v14, :cond_3

    .line 477
    new-instance v15, Ljava/util/HashMap;

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 478
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 480
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v14}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 482
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/Long;

    .line 483
    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 484
    if-eqz v2, :cond_1

    .line 485
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 486
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x2

    .line 487
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x3

    .line 488
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x4

    .line 489
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x5

    .line 490
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v2, 0x6

    .line 491
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v2, 0x7

    .line 492
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 486
    invoke-direct/range {v2 .. v11}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 493
    invoke-interface {v13, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-virtual/range {p1 .. p1}, Landroid/database/MatrixCursor;->getCount()I

    move-result v2

    move/from16 v0, p3

    if-lt v2, v0, :cond_1

    .line 500
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 503
    :cond_3
    return-object v13
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 761
    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->l:Ljava/util/Map;

    monitor-enter v1

    .line 762
    :try_start_0
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 763
    monitor-exit v1

    .line 764
    return-void

    .line 763
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .prologue
    .line 535
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 536
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 537
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 538
    invoke-virtual {v0, p4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 539
    invoke-virtual {v0, p5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 540
    invoke-virtual {v0, p6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 541
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 542
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 543
    invoke-static {p9}, Lcom/twitter/model/businessprofiles/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 544
    return-void
.end method

.method private a(Landroid/database/MatrixCursor;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 584
    invoke-static {p2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcjh;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->getCount()I

    move-result v0

    .line 588
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 589
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 590
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 591
    invoke-static {p2}, Lcom/twitter/library/util/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 594
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 595
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 596
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 598
    :cond_0
    return-void
.end method

.method private a(Landroid/database/MatrixCursor;Ljava/lang/String;ILjava/util/Set;Ldau;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/MatrixCursor;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ldau",
            "<",
            "Lcom/twitter/library/api/search/TwitterTypeAhead;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 508
    invoke-static {p2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/database/MatrixCursor;->getCount()I

    move-result v2

    move/from16 v0, p3

    if-ge v2, v0, :cond_1

    .line 509
    invoke-static {p2}, Lcom/twitter/android/provider/SuggestionsProvider;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 510
    if-eqz v2, :cond_1

    .line 511
    if-nez p5, :cond_2

    .line 513
    :goto_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/api/search/TwitterTypeAhead;

    .line 514
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->getCount()I

    move-result v3

    move/from16 v0, p3

    if-lt v3, v0, :cond_3

    .line 531
    :cond_1
    return-void

    .line 512
    :cond_2
    move-object/from16 v0, p5

    invoke-static {v2, v0}, Lczz;->a(Ljava/lang/Iterable;Ldau;)Ljava/lang/Iterable;

    move-result-object v2

    goto :goto_0

    .line 518
    :cond_3
    iget-object v3, v2, Lcom/twitter/library/api/search/TwitterTypeAhead;->e:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v3, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 519
    iget-object v3, v2, Lcom/twitter/library/api/search/TwitterTypeAhead;->e:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v3, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v3, v2, Lcom/twitter/library/api/search/TwitterTypeAhead;->e:Lcom/twitter/model/core/TwitterUser;

    iget-object v6, v3, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    iget-object v3, v2, Lcom/twitter/library/api/search/TwitterTypeAhead;->e:Lcom/twitter/model/core/TwitterUser;

    iget-object v7, v3, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    iget-object v3, v2, Lcom/twitter/library/api/search/TwitterTypeAhead;->e:Lcom/twitter/model/core/TwitterUser;

    iget-object v8, v3, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    iget-object v3, v2, Lcom/twitter/library/api/search/TwitterTypeAhead;->e:Lcom/twitter/model/core/TwitterUser;

    iget-boolean v3, v3, Lcom/twitter/model/core/TwitterUser;->n:Z

    if-eqz v3, :cond_4

    const/4 v9, 0x2

    :goto_2
    iget-object v3, v2, Lcom/twitter/library/api/search/TwitterTypeAhead;->e:Lcom/twitter/model/core/TwitterUser;

    iget v10, v3, Lcom/twitter/model/core/TwitterUser;->T:I

    iget-object v2, v2, Lcom/twitter/library/api/search/TwitterTypeAhead;->e:Lcom/twitter/model/core/TwitterUser;

    iget-object v11, v2, Lcom/twitter/model/core/TwitterUser;->P:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v11}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Lcom/twitter/library/api/search/TwitterTypeAheadGroup;)V
    .locals 3

    .prologue
    .line 749
    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->l:Ljava/util/Map;

    monitor-enter v1

    .line 750
    :try_start_0
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->l:Ljava/util/Map;

    invoke-static {p0}, Lcom/twitter/android/provider/SuggestionsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    monitor-exit v1

    .line 752
    return-void

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/api/search/TwitterTypeAhead;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 768
    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->m:Ljava/util/Map;

    monitor-enter v1

    .line 769
    :try_start_0
    const-string/jumbo v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    :goto_0
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->m:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    monitor-exit v1

    .line 772
    return-void

    .line 769
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 771
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(Landroid/database/MatrixCursor;ILandroid/database/Cursor;Ljava/util/Set;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/MatrixCursor;",
            "I",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/android/provider/s;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v7, 0x6

    .line 1172
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_1

    .line 1214
    :cond_0
    :goto_0
    return p1

    :cond_1
    move v0, v1

    .line 1178
    :cond_2
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1179
    if-eq v2, v7, :cond_5

    .line 1206
    :cond_3
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1208
    :cond_4
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1209
    if-ne v0, v7, :cond_0

    .line 1212
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 1183
    :cond_5
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1184
    new-instance v3, Lcom/twitter/android/provider/s;

    invoke-direct {v3, v2}, Lcom/twitter/android/provider/s;-><init>(Ljava/lang/String;)V

    .line 1185
    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1186
    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1187
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 1188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1189
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1190
    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1191
    const/4 v4, 0x1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1192
    const-string/jumbo v4, "com.twitter.android.action.SEARCH_QUERY_SAVED"

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1193
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1194
    sget-object v4, Lcom/twitter/library/provider/de;->a:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 1195
    const-string/jumbo v5, "type"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1196
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1197
    const/4 v4, 0x3

    .line 1198
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v6, 0xd

    .line 1197
    invoke-static {v4, v5, v2, v6, p1}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLjava/lang/String;II)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v2

    .line 1200
    invoke-virtual {v2}, Lcom/twitter/library/scribe/TwitterScribeItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1201
    add-int/lit8 p1, p1, 0x1

    .line 1202
    add-int/lit8 v0, v0, 0x1

    .line 1204
    :cond_6
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    if-lt v0, p4, :cond_2

    goto/16 :goto_1
.end method

.method private static b(Landroid/database/MatrixCursor;ILjava/util/List;Ljava/util/Set;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/MatrixCursor;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/api/search/TwitterTypeAhead;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/android/provider/s;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 1280
    .line 1281
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/search/TwitterTypeAhead;

    .line 1282
    if-lt v1, p4, :cond_1

    .line 1310
    :cond_0
    return p1

    .line 1285
    :cond_1
    new-instance v3, Lcom/twitter/android/provider/s;

    iget-object v5, v0, Lcom/twitter/library/api/search/TwitterTypeAhead;->e:Lcom/twitter/model/core/TwitterUser;

    iget-object v5, v5, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/twitter/android/provider/s;-><init>(Ljava/lang/String;)V

    .line 1286
    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1287
    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1288
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    .line 1289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1290
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1291
    iget-object v3, v0, Lcom/twitter/library/api/search/TwitterTypeAhead;->e:Lcom/twitter/model/core/TwitterUser;

    iget-object v3, v3, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1292
    iget-object v3, v0, Lcom/twitter/library/api/search/TwitterTypeAhead;->e:Lcom/twitter/model/core/TwitterUser;

    iget-object v3, v3, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1293
    const-string/jumbo v3, "com.twitter.android.action.USER_SHOW_TYPEAHEAD"

    invoke-virtual {v5, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x40

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/twitter/library/api/search/TwitterTypeAhead;->e:Lcom/twitter/model/core/TwitterUser;

    iget-object v6, v6, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1295
    invoke-virtual {v5, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1296
    iget-object v3, v0, Lcom/twitter/library/api/search/TwitterTypeAhead;->e:Lcom/twitter/model/core/TwitterUser;

    .line 1297
    invoke-virtual {v3}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v6

    const/4 v3, 0x3

    .line 1296
    invoke-static {v6, v7, v8, v3, p1}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLjava/lang/String;II)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v3

    .line 1298
    invoke-virtual {v3}, Lcom/twitter/library/scribe/TwitterScribeItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1299
    invoke-virtual {v5, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1300
    invoke-virtual {v5, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1301
    invoke-virtual {v5, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1302
    iget-object v3, v0, Lcom/twitter/library/api/search/TwitterTypeAhead;->e:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v3}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1303
    iget-object v3, v0, Lcom/twitter/library/api/search/TwitterTypeAhead;->e:Lcom/twitter/model/core/TwitterUser;

    iget-object v3, v3, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1304
    iget-object v3, v0, Lcom/twitter/library/api/search/TwitterTypeAhead;->e:Lcom/twitter/model/core/TwitterUser;

    iget-boolean v3, v3, Lcom/twitter/model/core/TwitterUser;->n:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1305
    iget-object v0, v0, Lcom/twitter/library/api/search/TwitterTypeAhead;->e:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->P:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1306
    add-int/lit8 p1, p1, 0x1

    .line 1307
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 1309
    goto/16 :goto_0

    :cond_2
    move v3, v2

    .line 1304
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/MatrixCursor;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/database/MatrixCursor;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/android/provider/s;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1329
    if-lez p7, :cond_2

    .line 1330
    const/4 v3, 0x1

    const-string/jumbo v4, "tokens_topic_view"

    sget-object v5, Lcom/twitter/android/provider/u;->a:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v2, 0x64

    .line 1332
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object v2, p0

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    .line 1330
    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1334
    if-eqz v4, :cond_2

    .line 1336
    const/4 v2, 0x0

    move v3, p2

    .line 1337
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move/from16 v0, p7

    if-ge v2, v0, :cond_1

    .line 1338
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1339
    new-instance v6, Lcom/twitter/android/provider/s;

    invoke-direct {v6, v5}, Lcom/twitter/android/provider/s;-><init>(Ljava/lang/String;)V

    .line 1340
    move-object/from16 v0, p6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1341
    move-object/from16 v0, p6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1342
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    .line 1343
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1344
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1345
    invoke-virtual {v6, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1346
    invoke-virtual {v6, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1347
    const-string/jumbo v7, "com.twitter.android.action.SEARCH_TYPEAHEAD_TOPIC"

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1348
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1349
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1350
    const-wide/16 v8, -0x1

    const/16 v7, 0xc

    invoke-static {v8, v9, v5, v7, v3}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLjava/lang/String;II)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v5

    .line 1352
    invoke-virtual {v5}, Lcom/twitter/library/scribe/TwitterScribeItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1353
    add-int/lit8 v3, v3, 0x1

    .line 1354
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1358
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move p2, v3

    .line 1362
    :cond_2
    return p2

    .line 1358
    :catchall_0
    move-exception v2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/api/search/TwitterTypeAhead;",
            ">;"
        }
    .end annotation

    .prologue
    .line 776
    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->m:Ljava/util/Map;

    monitor-enter v1

    .line 777
    :try_start_0
    const-string/jumbo v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    :goto_0
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->m:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 777
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 783
    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->m:Ljava/util/Map;

    monitor-enter v1

    .line 784
    :try_start_0
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 785
    monitor-exit v1

    .line 786
    return-void

    .line 785
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/api/search/TwitterTypeAhead;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 790
    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->n:Ljava/util/Map;

    monitor-enter v1

    .line 791
    :try_start_0
    const-string/jumbo v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    :goto_0
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->n:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    monitor-exit v1

    .line 794
    return-void

    .line 791
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 793
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/api/search/TwitterTypeAhead;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->n:Ljava/util/Map;

    monitor-enter v1

    .line 799
    :try_start_0
    const-string/jumbo v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    :goto_0
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->n:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 799
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 801
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 805
    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->n:Ljava/util/Map;

    monitor-enter v1

    .line 806
    :try_start_0
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 807
    monitor-exit v1

    .line 808
    return-void

    .line 807
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d()Landroid/database/Cursor;
    .locals 15

    .prologue
    .line 355
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v10

    .line 356
    invoke-virtual {p0}, Lcom/twitter/android/provider/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10, v11}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lcom/twitter/library/provider/dm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 358
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 360
    new-instance v12, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/twitter/android/provider/y;->a:[Ljava/lang/String;

    invoke-direct {v12, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 362
    const-string/jumbo v2, "dm_inbox"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 363
    sget-object v2, Lbnw;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "conversations_sort_event_id DESC"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 365
    new-instance v0, Lcgf;

    invoke-virtual {p0}, Lcom/twitter/android/provider/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide v2, v10

    invoke-direct/range {v0 .. v6}, Lcgf;-><init>(Landroid/database/Cursor;JLandroid/content/Context;Ljava/lang/String;Z)V

    .line 369
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 370
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-static {}, Lcom/twitter/android/client/bu;->g()I

    move-result v14

    .line 374
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcgf;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    invoke-virtual {v0}, Lcgf;->k()J

    move-result-wide v4

    .line 376
    invoke-virtual {v0}, Lcgf;->j()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    invoke-virtual {v0}, Lcgf;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/library/util/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 379
    invoke-virtual {v0}, Lcgf;->g()Ljava/lang/String;

    move-result-object v7

    .line 380
    invoke-virtual {v0}, Lcgf;->o()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, v12

    .line 377
    invoke-direct/range {v2 .. v11}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 381
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {v12}, Landroid/database/MatrixCursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lt v2, v14, :cond_0

    .line 389
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 392
    invoke-virtual {v12}, Landroid/database/MatrixCursor;->getCount()I

    move-result v0

    if-ge v0, v14, :cond_4

    .line 393
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Ljava/lang/String;IZ)Landroid/database/Cursor;

    move-result-object v10

    .line 394
    if-eqz v10, :cond_4

    .line 396
    :cond_2
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 397
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 398
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 399
    const/4 v0, 0x1

    .line 400
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    .line 401
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x4

    .line 402
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x5

    .line 403
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v0, 0x6

    .line 404
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/16 v0, 0x8

    .line 405
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v1, v12

    .line 399
    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 406
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-virtual {v12}, Landroid/database/MatrixCursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lt v0, v14, :cond_2

    .line 414
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 419
    :cond_4
    return-object v12

    .line 389
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 414
    :catchall_1
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1417
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1418
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1419
    sget-object v1, Lcjf;->b:Ljava/util/regex/Pattern;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1420
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 1424
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string/jumbo v0, " "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1422
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1424
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 30

    .prologue
    .line 817
    invoke-static/range {p1 .. p1}, Lcom/twitter/android/provider/SuggestionsProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 819
    new-instance v26, Lcom/twitter/android/provider/s;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/twitter/android/provider/s;-><init>(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/provider/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v27

    .line 822
    invoke-static/range {v27 .. v27}, Lcom/twitter/library/provider/fm;->b(Landroid/content/Context;)J

    move-result-wide v4

    .line 824
    move-object/from16 v0, v27

    invoke-static {v0, v4, v5}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v4

    .line 826
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 827
    invoke-virtual {v4}, Lcom/twitter/library/provider/dm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 829
    invoke-static {}, Lcom/twitter/android/client/bu;->e()I

    move-result v12

    .line 830
    invoke-static {}, Lcom/twitter/android/client/bu;->d()I

    move-result v20

    .line 831
    invoke-static {}, Lcom/twitter/android/client/bu;->c()I

    move-result v13

    .line 832
    invoke-static {}, Lcom/twitter/android/client/bu;->f()I

    move-result v22

    .line 834
    const/16 v17, 0x0

    .line 835
    new-instance v14, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/twitter/android/provider/SuggestionsProvider;->q:[Ljava/lang/String;

    invoke-direct {v14, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 851
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 852
    const-string/jumbo v6, "search_queries"

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 853
    const-string/jumbo v6, "name LIKE "

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 854
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 855
    const-string/jumbo v6, " AND query!=\'\'"

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 856
    const-string/jumbo v6, " AND query NOT LIKE \'place:%\'"

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 857
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 859
    sget-object v6, Lcom/twitter/android/provider/t;->a:[Ljava/lang/String;

    const-string/jumbo v7, "type IN (6,0)"

    const/4 v8, 0x0

    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    const-string/jumbo v11, "type ASC, query_id DESC, time DESC"

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 863
    invoke-static/range {v25 .. v25}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 865
    add-int v4, v20, v12

    if-nez v4, :cond_3

    .line 866
    const/4 v4, 0x0

    move-object/from16 v24, v4

    .line 873
    :goto_0
    const/4 v4, 0x0

    .line 875
    if-eqz v28, :cond_f

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 877
    move/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v14, v0, v1, v2, v3}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/MatrixCursor;ILandroid/database/Cursor;Ljava/util/Set;I)I

    move-result v6

    .line 879
    sub-int v7, v6, v17

    add-int/2addr v4, v7

    .line 882
    sub-int v7, v20, v4

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-static {v14, v6, v0, v1, v7}, Lcom/twitter/android/provider/SuggestionsProvider;->b(Landroid/database/MatrixCursor;ILandroid/database/Cursor;Ljava/util/Set;I)I

    move-result v17

    .line 884
    sub-int v6, v17, v6

    add-int/2addr v4, v6

    move/from16 v6, v17

    .line 887
    :goto_1
    if-eqz v24, :cond_e

    .line 889
    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/twitter/library/api/search/TwitterTypeAheadGroup;->b:Ljava/util/List;

    sub-int v8, v20, v4

    move-object/from16 v0, v19

    invoke-static {v14, v6, v7, v0, v8}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/MatrixCursor;ILjava/util/List;Ljava/util/Set;I)I

    move-result v15

    .line 891
    sub-int v6, v15, v6

    add-int/2addr v4, v6

    .line 894
    :goto_2
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 895
    const/16 v21, 0x0

    .line 900
    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v6

    .line 901
    sget-object v6, Lcom/twitter/android/provider/SuggestionsProvider;->k:Ljava/util/regex/Pattern;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 902
    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 903
    const/16 v7, 0x40

    if-ne v6, v7, :cond_4

    .line 905
    if-nez v4, :cond_d

    .line 906
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-static {v0, v14, v15, v1, v2}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/content/Context;Landroid/database/MatrixCursor;ILcom/twitter/android/provider/s;Ljava/util/Set;)I

    move-result v7

    .line 912
    :goto_3
    const-string/jumbo v8, "tokens_text LIKE ? AND users_username NOT NULL"

    const-string/jumbo v10, "tokens_weight DESC, LOWER(users_username) ASC"

    move-object v6, v14

    invoke-static/range {v5 .. v12}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/MatrixCursor;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)I

    move-result v15

    .line 915
    sub-int v6, v15, v7

    add-int v8, v21, v6

    .line 917
    const/4 v6, 0x1

    .line 918
    const/4 v7, 0x0

    move/from16 v29, v6

    move v6, v7

    move v7, v8

    move v8, v4

    move/from16 v4, v29

    .line 931
    :goto_4
    const/4 v10, 0x0

    move/from16 v21, v4

    move/from16 v22, v10

    move/from16 v23, v6

    move v4, v7

    move v6, v8

    .line 940
    :goto_5
    if-eqz v23, :cond_8

    .line 945
    if-eqz v22, :cond_7

    .line 947
    const-string/jumbo v16, "search_queries_query LIKE ?"

    .line 948
    const-string/jumbo v8, "users_name LIKE ?"

    .line 949
    const-string/jumbo v10, "tokens_weight DESC, LOWER(users_name) ASC"

    .line 958
    :goto_6
    const-string/jumbo v18, "tokens_weight DESC, LOWER(search_queries_query) ASC"

    sub-int v20, v20, v6

    move-object v13, v5

    move-object/from16 v17, v9

    invoke-static/range {v13 .. v20}, Lcom/twitter/android/provider/SuggestionsProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/MatrixCursor;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)I

    move-result v7

    .line 961
    sub-int v13, v7, v15

    add-int/2addr v6, v13

    .line 963
    if-nez v6, :cond_0

    .line 964
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-static {v0, v14, v7, v1, v2}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/content/Context;Landroid/database/MatrixCursor;ILcom/twitter/android/provider/s;Ljava/util/Set;)I

    move-result v7

    :cond_0
    move-object v6, v14

    .line 968
    invoke-static/range {v5 .. v12}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/MatrixCursor;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)I

    move-result v15

    .line 970
    sub-int v5, v15, v7

    add-int/2addr v4, v5

    move v6, v4

    move v5, v15

    .line 975
    :goto_7
    if-eqz v24, :cond_b

    .line 977
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/twitter/library/api/search/TwitterTypeAheadGroup;->a:Ljava/util/List;

    sub-int v7, v12, v6

    invoke-static {v14, v5, v4, v11, v7}, Lcom/twitter/android/provider/SuggestionsProvider;->b(Landroid/database/MatrixCursor;ILjava/util/List;Ljava/util/Set;I)I

    move-result v4

    .line 979
    sub-int v5, v4, v5

    add-int/2addr v5, v6

    .line 982
    :goto_8
    if-nez v22, :cond_1

    .line 983
    if-eqz v21, :cond_9

    .line 984
    new-instance v5, Lcom/twitter/android/provider/s;

    const/4 v6, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/twitter/android/provider/s;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-static {v0, v14, v4, v5}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/content/Context;Landroid/database/MatrixCursor;ILcom/twitter/android/provider/s;)I

    .line 997
    :cond_1
    :goto_9
    if-eqz v28, :cond_2

    .line 998
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1000
    :cond_2
    return-object v14

    .line 869
    :cond_3
    invoke-static/range {v25 .. v25}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Ljava/lang/String;)Lcom/twitter/library/api/search/TwitterTypeAheadGroup;

    move-result-object v4

    move-object/from16 v24, v4

    goto/16 :goto_0

    .line 919
    :cond_4
    const/16 v7, 0x23

    if-ne v6, v7, :cond_5

    .line 921
    const-string/jumbo v16, "tokens_text LIKE ? AND search_queries_query NOT NULL"

    const-string/jumbo v18, "tokens_weight DESC, LOWER(search_queries_query) ASC"

    move-object v13, v5

    move-object/from16 v17, v9

    invoke-static/range {v13 .. v20}, Lcom/twitter/android/provider/SuggestionsProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/MatrixCursor;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)I

    move-result v8

    .line 924
    sub-int v6, v8, v15

    add-int v7, v4, v6

    .line 925
    const/4 v4, 0x0

    .line 926
    const/4 v6, 0x0

    move v15, v8

    move v8, v7

    move/from16 v7, v21

    goto/16 :goto_4

    .line 928
    :cond_5
    const/4 v6, 0x0

    .line 929
    const/4 v7, 0x1

    move v8, v4

    move v4, v6

    move v6, v7

    move/from16 v7, v21

    goto/16 :goto_4

    .line 933
    :cond_6
    const/4 v6, 0x0

    .line 937
    sget-object v7, Lcom/twitter/android/provider/SuggestionsProvider;->j:Ljava/util/regex/Pattern;

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    move/from16 v22, v7

    move/from16 v23, v7

    move/from16 v29, v6

    move v6, v4

    move/from16 v4, v21

    move/from16 v21, v29

    goto/16 :goto_5

    .line 952
    :cond_7
    const-string/jumbo v16, "tokens_text LIKE ? AND search_queries_query NOT NULL"

    .line 953
    const-string/jumbo v8, "tokens_text LIKE ? AND users_username NOT NULL"

    .line 954
    const-string/jumbo v10, "tokens_weight DESC, LOWER(users_username) ASC"

    goto/16 :goto_6

    .line 971
    :cond_8
    if-nez v6, :cond_c

    if-nez v21, :cond_c

    .line 972
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-static {v0, v14, v15, v1, v2}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/content/Context;Landroid/database/MatrixCursor;ILcom/twitter/android/provider/s;Ljava/util/Set;)I

    move-result v15

    move v6, v4

    move v5, v15

    goto/16 :goto_7

    .line 985
    :cond_9
    if-eqz v23, :cond_1

    .line 986
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v14, v4, v1}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/content/Context;Landroid/database/MatrixCursor;ILcom/twitter/android/provider/s;)I

    goto :goto_9

    .line 990
    :cond_a
    const v4, 0x7f0a0a91

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x1

    move-object v15, v5

    move-object/from16 v16, v14

    move/from16 v20, v22

    invoke-static/range {v15 .. v21}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/MatrixCursor;ILjava/lang/String;Ljava/util/Set;IZ)I

    move-result v4

    .line 992
    if-eqz v28, :cond_1

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 993
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-static {v14, v4, v0, v1, v13}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/MatrixCursor;ILandroid/database/Cursor;Ljava/util/Set;I)I

    move-result v4

    .line 994
    const v5, 0x7fffffff

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-static {v14, v4, v0, v1, v5}, Lcom/twitter/android/provider/SuggestionsProvider;->b(Landroid/database/MatrixCursor;ILandroid/database/Cursor;Ljava/util/Set;I)I

    goto/16 :goto_9

    :cond_b
    move v4, v5

    goto/16 :goto_8

    :cond_c
    move v6, v4

    move v5, v15

    goto/16 :goto_7

    :cond_d
    move v7, v15

    goto/16 :goto_3

    :cond_e
    move v15, v6

    goto/16 :goto_2

    :cond_f
    move/from16 v6, v17

    goto/16 :goto_1
.end method


# virtual methods
.method a(Ljava/lang/String;Landroid/database/MatrixCursor;)Landroid/database/Cursor;
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 306
    invoke-virtual {p0}, Lcom/twitter/android/provider/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 307
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 310
    if-nez v0, :cond_1

    move-object v5, v6

    move-object v4, v6

    .line 322
    :goto_0
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 324
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    .line 325
    invoke-static {}, Lcom/twitter/android/client/bu;->g()I

    move-result v12

    .line 326
    invoke-static {v2, v8, v9}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lcom/twitter/library/provider/dm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v2, "tokens_user_view"

    sget-object v3, Lcom/twitter/android/provider/n;->a:[Ljava/lang/String;

    const-string/jumbo v8, "tokens_weight DESC, LOWER(users_username) ASC"

    .line 330
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object v7, v6

    .line 327
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 331
    if-eqz v3, :cond_4

    move v0, v10

    .line 332
    :cond_0
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 333
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 334
    if-eqz v4, :cond_0

    .line 335
    invoke-virtual {p2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    .line 336
    add-int/lit8 v2, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 337
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 338
    invoke-virtual {v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 339
    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 340
    const/4 v0, 0x3

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 341
    const/4 v0, 0x4

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 342
    const/4 v0, 0x5

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 343
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_1

    .line 314
    :cond_1
    sget-object v0, Lcjf;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    const-string/jumbo v0, "users_name LIKE ?"

    .line 319
    :goto_2
    new-array v5, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v10

    move-object v4, v0

    goto/16 :goto_0

    .line 317
    :cond_2
    const-string/jumbo v0, "tokens_text LIKE ? AND users_username NOT NULL"

    goto :goto_2

    .line 346
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, v12

    move-object v5, v11

    .line 349
    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/MatrixCursor;Ljava/lang/String;ILjava/util/Set;Ldau;)V

    .line 350
    return-object p2
.end method

.method a(Ljava/lang/String;Landroid/database/MatrixCursor;Z)Landroid/database/Cursor;
    .locals 13

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/twitter/android/provider/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 604
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 605
    const/4 v0, 0x0

    .line 606
    invoke-static {p1}, Lcom/twitter/android/provider/SuggestionsProvider;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 607
    if-eqz v1, :cond_7

    .line 608
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/search/TwitterTypeAhead;

    .line 609
    invoke-virtual {p2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    .line 610
    add-int/lit8 v2, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 611
    iget-object v1, v0, Lcom/twitter/library/api/search/TwitterTypeAhead;->g:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 613
    new-instance v1, Lcom/twitter/android/provider/s;

    iget-object v0, v0, Lcom/twitter/library/api/search/TwitterTypeAhead;->g:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/twitter/android/provider/s;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 614
    goto :goto_0

    :cond_0
    move v10, v1

    .line 617
    :goto_1
    invoke-static {}, Lcom/twitter/android/client/bu;->g()I

    move-result v12

    .line 618
    if-ge v10, v12, :cond_3

    .line 619
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 620
    invoke-static {v3, v0, v1}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Lcom/twitter/library/provider/dm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "tokens_topic_view"

    sget-object v3, Lcom/twitter/android/provider/u;->a:[Ljava/lang/String;

    const-string/jumbo v4, "tokens_text LIKE ? AND search_queries_query NOT NULL"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "tokens_weight DESC, LOWER(search_queries_query) ASC"

    .line 624
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 621
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 625
    if-eqz v1, :cond_3

    .line 626
    :cond_1
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 628
    new-instance v0, Lcom/twitter/android/provider/s;

    invoke-direct {v0, v2}, Lcom/twitter/android/provider/s;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 629
    if-lt v10, v12, :cond_6

    .line 637
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 641
    :cond_3
    if-ge v10, v12, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 642
    invoke-virtual {p2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    if-eqz p3, :cond_5

    :cond_4
    new-instance v0, Lcom/twitter/android/provider/s;

    invoke-direct {v0, p1}, Lcom/twitter/android/provider/s;-><init>(Ljava/lang/String;)V

    .line 643
    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 644
    invoke-virtual {p2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 645
    add-int/lit8 v1, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 646
    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 649
    :cond_5
    return-object p2

    .line 632
    :cond_6
    invoke-virtual {p2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 633
    add-int/lit8 v0, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 634
    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move v10, v0

    goto :goto_2

    :cond_7
    move v10, v0

    goto/16 :goto_1
.end method

.method a(Ljava/lang/String;Lcom/twitter/library/provider/ParcelableMatrixCursor;)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/twitter/android/provider/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 655
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 654
    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Lcom/twitter/library/provider/dm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 657
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 658
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    const-string/jumbo v3, "country=name OR country=\'\'"

    const/4 v4, 0x0

    const-string/jumbo v5, "country ASC"

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/twitter/library/provider/ParcelableMatrixCursor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object p2

    .line 668
    :goto_0
    return-object p2

    .line 662
    :cond_0
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 663
    const-string/jumbo v3, "country LIKE ? AND country=name"

    const-string/jumbo v5, "country ASC"

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/twitter/library/provider/ParcelableMatrixCursor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/database/Cursor;

    .line 665
    const-string/jumbo v3, "name LIKE ?"

    const-string/jumbo v5, "name ASC,country ASC"

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/twitter/library/provider/ParcelableMatrixCursor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 740
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Delete not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 702
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->p:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 728
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    .line 725
    :goto_0
    return-object v0

    .line 707
    :pswitch_1
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.android.search.suggest"

    goto :goto_0

    .line 710
    :pswitch_2
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.twitter.android.suggest_compose_users"

    goto :goto_0

    .line 713
    :pswitch_3
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.twitter.android.suggest_hashtags"

    goto :goto_0

    .line 716
    :pswitch_4
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.twitter.android.suggest_dmable_users"

    goto :goto_0

    .line 719
    :pswitch_5
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.twitter.android.suggest_dm_share_tweet_users"

    goto :goto_0

    .line 722
    :pswitch_6
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.twitter.android.suggest_locations"

    goto :goto_0

    .line 725
    :pswitch_7
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.twitter.android.suggest_users"

    goto :goto_0

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 735
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Insert not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 242
    const-string/jumbo v0, "SuggestionsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "QUERY uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/SuggestionsProvider;->p:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v0, Lcom/twitter/android/provider/SuggestionsProvider;->p:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 244
    packed-switch v0, :pswitch_data_0

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_0
    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/provider/SuggestionsProvider;->e(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 296
    :goto_1
    return-object v0

    .line 247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_1

    .line 261
    :pswitch_2
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/twitter/android/provider/y;->a:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p3, v0}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Ljava/lang/String;Landroid/database/MatrixCursor;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 265
    :pswitch_3
    invoke-static {p3}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    .line 266
    :cond_1
    if-eqz p3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object p3, v0

    .line 268
    :cond_2
    const-string/jumbo v0, "add_query_to_empty_result"

    const/4 v1, 0x0

    .line 269
    invoke-static {p1, v0, v1}, Lcom/twitter/util/ap;->a(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v0

    .line 270
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/twitter/android/provider/p;->a:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p3, v1, v0}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Ljava/lang/String;Landroid/database/MatrixCursor;Z)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 266
    :cond_3
    const-string/jumbo v0, "#"

    goto :goto_2

    .line 274
    :pswitch_4
    const-string/jumbo v0, "add_real_time_suggestions"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/twitter/util/ap;->a(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v3

    .line 276
    const-string/jumbo v0, "add_query"

    const/4 v1, 0x1

    .line 277
    invoke-static {p1, v0, v1}, Lcom/twitter/util/ap;->a(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v5

    .line 278
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/twitter/android/provider/f;

    invoke-direct {v7}, Lcom/twitter/android/provider/f;-><init>()V

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Ljava/lang/String;IZZZLjava/util/List;Ldau;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 283
    :pswitch_5
    invoke-direct {p0}, Lcom/twitter/android/provider/SuggestionsProvider;->d()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 286
    :pswitch_6
    new-instance v0, Lcom/twitter/library/provider/ParcelableMatrixCursor;

    sget-object v1, Lcom/twitter/android/provider/r;->a:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/twitter/library/provider/ParcelableMatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p3, v0}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Ljava/lang/String;Lcom/twitter/library/provider/ParcelableMatrixCursor;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 290
    :pswitch_7
    const-string/jumbo v0, "friendship"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/twitter/util/ap;->a(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v2

    .line 291
    const-string/jumbo v0, "add_real_time_suggestions"

    const/4 v1, 0x0

    .line 292
    invoke-static {p1, v0, v1}, Lcom/twitter/util/ap;->a(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v3

    .line 294
    const-string/jumbo v0, "additional_user_ids"

    const/4 v1, 0x0

    .line 295
    invoke-static {p1, v0, v1}, Lcom/twitter/util/ap;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 296
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Ljava/lang/String;IZZZLjava/util/List;Ldau;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 745
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Update not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
