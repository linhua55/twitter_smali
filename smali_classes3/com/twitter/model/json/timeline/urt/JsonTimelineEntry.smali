.class public Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;
.super Lcom/twitter/model/json/common/f;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/f",
        "<",
        "Lcts;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "entryId"
        }
    .end annotation
.end field

.field public b:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "sortIndex"
        }
    .end annotation
.end field

.field public c:Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "content"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method

.method private a(Lcom/twitter/model/json/timeline/urt/JsonTimelineItem;Ljava/lang/String;)Lctu;
    .locals 7

    .prologue
    .line 58
    iget-object v1, p1, Lcom/twitter/model/json/timeline/urt/JsonTimelineItem;->a:Lcom/twitter/model/json/timeline/urt/JsonTimelineItem$JsonItemContent;

    .line 59
    iget-object v0, v1, Lcom/twitter/model/json/timeline/urt/JsonTimelineItem$JsonItemContent;->a:Lcud;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcue;

    iget-wide v2, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->b:J

    iget-object v4, p1, Lcom/twitter/model/json/timeline/urt/JsonTimelineItem;->c:Lctp;

    iget-object v5, p1, Lcom/twitter/model/json/timeline/urt/JsonTimelineItem;->b:Lctr;

    iget-object v6, v1, Lcom/twitter/model/json/timeline/urt/JsonTimelineItem$JsonItemContent;->a:Lcud;

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcue;-><init>(Ljava/lang/String;JLctp;Lctr;Lcud;)V

    .line 65
    :goto_0
    return-object v0

    .line 62
    :cond_0
    iget-object v0, v1, Lcom/twitter/model/json/timeline/urt/JsonTimelineItem$JsonItemContent;->b:Lcth;

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Lcom/twitter/model/json/timeline/urt/e;

    iget-wide v2, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->b:J

    iget-object v1, v1, Lcom/twitter/model/json/timeline/urt/JsonTimelineItem$JsonItemContent;->b:Lcth;

    invoke-direct {v0, p2, v2, v3, v1}, Lcom/twitter/model/json/timeline/urt/e;-><init>(Ljava/lang/String;JLcth;)V

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/twitter/model/json/timeline/urt/JsonTimelineModule;)Lctv;
    .locals 4

    .prologue
    .line 70
    iget-object v0, p1, Lcom/twitter/model/json/timeline/urt/JsonTimelineModule;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lctv;->a:Ljava/util/Set;

    iget-object v1, p1, Lcom/twitter/model/json/timeline/urt/JsonTimelineModule;->c:Ljava/lang/String;

    .line 71
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p1, Lcom/twitter/model/json/timeline/urt/JsonTimelineModule;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 73
    iget-object v0, p1, Lcom/twitter/model/json/timeline/urt/JsonTimelineModule;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/timeline/urt/JsonTimelineModuleItem;

    .line 74
    iget-object v3, v0, Lcom/twitter/model/json/timeline/urt/JsonTimelineModuleItem;->b:Lcom/twitter/model/json/timeline/urt/JsonTimelineItem;

    iget-object v0, v0, Lcom/twitter/model/json/timeline/urt/JsonTimelineModuleItem;->a:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->a(Lcom/twitter/model/json/timeline/urt/JsonTimelineItem;Ljava/lang/String;)Lctu;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Lctw;

    invoke-direct {v0}, Lctw;-><init>()V

    iget-object v2, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->a:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v2}, Lctw;->a(Ljava/lang/String;)Lctw;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->b:J

    .line 78
    invoke-virtual {v0, v2, v3}, Lctw;->a(J)Lctw;

    move-result-object v2

    .line 79
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/ImmutableList;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lctw;->a(Ljava/util/List;)Lctw;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/json/timeline/urt/JsonTimelineModule;->c:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v1}, Lctw;->b(Ljava/lang/String;)Lctw;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/json/timeline/urt/JsonTimelineModule;->b:Lctl;

    .line 81
    invoke-virtual {v0, v1}, Lctw;->a(Lctl;)Lctw;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/json/timeline/urt/JsonTimelineModule;->d:Lctp;

    .line 82
    invoke-virtual {v0, v1}, Lctw;->a(Lctp;)Lctw;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/json/timeline/urt/JsonTimelineModule;->e:Lctr;

    .line 83
    invoke-virtual {v0, v1}, Lctw;->a(Lctr;)Lctw;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lctw;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctv;

    .line 86
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lcom/twitter/model/json/timeline/urt/JsonTimelineOperation;)Lctx;
    .locals 5

    .prologue
    .line 92
    iget-object v0, p1, Lcom/twitter/model/json/timeline/urt/JsonTimelineOperation;->a:Lcom/twitter/model/timeline/dd;

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lctq;

    iget-object v1, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->b:J

    iget-object v4, p1, Lcom/twitter/model/json/timeline/urt/JsonTimelineOperation;->a:Lcom/twitter/model/timeline/dd;

    invoke-direct {v0, v1, v2, v3, v4}, Lctq;-><init>(Ljava/lang/String;JLcom/twitter/model/timeline/dd;)V

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcts;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    iget-object v2, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 39
    iget-object v2, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->c:Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;

    iget-object v2, v2, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;->a:Lcom/twitter/model/json/timeline/urt/JsonTimelineItem;

    if-eqz v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->c:Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;

    iget-object v2, v2, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;->b:Lcom/twitter/model/json/timeline/urt/JsonTimelineOperation;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->c:Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;

    iget-object v2, v2, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;->c:Lcom/twitter/model/json/timeline/urt/JsonTimelineModule;

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 41
    iget-object v0, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->c:Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;

    iget-object v0, v0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;->a:Lcom/twitter/model/json/timeline/urt/JsonTimelineItem;

    iget-object v1, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->a(Lcom/twitter/model/json/timeline/urt/JsonTimelineItem;Ljava/lang/String;)Lctu;

    move-result-object v0

    .line 52
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->c:Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;

    iget-object v2, v2, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;->b:Lcom/twitter/model/json/timeline/urt/JsonTimelineOperation;

    if-eqz v2, :cond_3

    .line 43
    iget-object v2, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->c:Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;

    iget-object v2, v2, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;->c:Lcom/twitter/model/json/timeline/urt/JsonTimelineModule;

    if-nez v2, :cond_2

    :goto_2
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 44
    iget-object v0, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->c:Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;

    iget-object v0, v0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;->b:Lcom/twitter/model/json/timeline/urt/JsonTimelineOperation;

    invoke-direct {p0, v0}, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->a(Lcom/twitter/model/json/timeline/urt/JsonTimelineOperation;)Lctx;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 43
    goto :goto_2

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->c:Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;

    iget-object v0, v0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;->c:Lcom/twitter/model/json/timeline/urt/JsonTimelineModule;

    if-eqz v0, :cond_5

    .line 46
    iget-object v0, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->c:Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;

    iget-object v0, v0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry$JsonTimelineEntryContent;->c:Lcom/twitter/model/json/timeline/urt/JsonTimelineModule;

    invoke-direct {p0, v0}, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->a(Lcom/twitter/model/json/timeline/urt/JsonTimelineModule;)Lctv;

    move-result-object v0

    goto :goto_1

    .line 49
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "A JsonTimelineEntry must have a non-null IDand a valid (greater than 0) sort index. ID: %s, Sort Index: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->a:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-wide v6, p0, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->b:J

    .line 50
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    .line 49
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 52
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/twitter/model/json/timeline/urt/JsonTimelineEntry;->a()Lcts;

    move-result-object v0

    return-object v0
.end method
