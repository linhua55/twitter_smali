.class public Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;
.super Lcom/twitter/android/ScrollingHeaderActivity;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lavg;
.implements Lcom/twitter/media/ui/image/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/ScrollingHeaderActivity;",
        "Landroid/view/View$OnClickListener;",
        "Lavg",
        "<",
        "Ljava/util/List",
        "<",
        "Lcpf;",
        ">;>;",
        "Lcom/twitter/media/ui/image/l;"
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;

.field private static final c:[Landroid/net/Uri;

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Lcom/twitter/android/kj;

.field private f:Lcom/twitter/media/ui/image/MediaImageView;

.field private g:J

.field private h:Landroid/view/ViewGroup;

.field private i:Lcom/twitter/model/core/TwitterUser;

.field private j:Lcpf;

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    const-string/jumbo v0, "twitter://stickers/top_tweets"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->a:Landroid/net/Uri;

    .line 90
    const-string/jumbo v0, "twitter://stickers/all_tweets"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->b:Landroid/net/Uri;

    .line 91
    new-array v0, v2, [Landroid/net/Uri;

    sget-object v1, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->a:Landroid/net/Uri;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->b:Landroid/net/Uri;

    aput-object v1, v0, v4

    sput-object v0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->c:[Landroid/net/Uri;

    .line 97
    const-string/jumbo v0, "top"

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "all"

    aput-object v2, v1, v3

    const-string/jumbo v2, "live"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/twitter/android/ScrollingHeaderActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 120
    sget-object v0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->d:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 121
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "sticker_id"

    .line 122
    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "sticker_tab"

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 123
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 121
    return-object v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/net/Uri;I)Lcom/twitter/library/client/ax;
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 303
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->m()Ljava/lang/String;

    move-result-object v5

    .line 306
    new-instance v0, Lcom/twitter/app/common/list/y;

    invoke-direct {v0}, Lcom/twitter/app/common/list/y;-><init>()V

    const v1, 0x7f0a0743

    .line 307
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/y;->b(I)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const v1, 0x7f0a0744

    .line 308
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/y;->c(I)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    .line 309
    invoke-virtual {v0, v6}, Lcom/twitter/app/common/list/y;->h(Z)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    .line 311
    sget-object v1, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->a:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    const-class v2, Lcom/twitter/android/media/stickers/timeline/StickerTimelineFragment;

    .line 313
    const v1, 0x7f0a0749

    invoke-virtual {p0, v1}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 314
    const-string/jumbo v3, "sticker_timeline_top"

    .line 315
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, v5}, Lcom/twitter/app/common/list/y;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    move-result-object v1

    check-cast v1, Lcom/twitter/app/common/list/y;

    const-string/jumbo v5, "sticker_id"

    iget-wide v6, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->g:J

    .line 316
    invoke-virtual {v1, v5, v6, v7}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;J)Lcom/twitter/app/common/base/g;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    .line 328
    :goto_0
    const-string/jumbo v4, "fragment_page_number"

    .line 329
    invoke-virtual {v0, v4, p2}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;I)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    .line 330
    new-instance v4, Lcom/twitter/library/client/ay;

    invoke-direct {v4, p1, v1}, Lcom/twitter/library/client/ay;-><init>(Landroid/net/Uri;Ljava/lang/Class;)V

    .line 331
    invoke-virtual {v4, v3}, Lcom/twitter/library/client/ay;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/client/ay;

    move-result-object v1

    .line 332
    invoke-virtual {v1, v0}, Lcom/twitter/library/client/ay;->a(Lcom/twitter/app/common/base/f;)Lcom/twitter/library/client/ay;

    move-result-object v0

    .line 333
    invoke-virtual {v0, v2}, Lcom/twitter/library/client/ay;->a(Ljava/lang/String;)Lcom/twitter/library/client/ay;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/twitter/library/client/ay;->a()Lcom/twitter/library/client/ax;

    move-result-object v0

    .line 330
    return-object v0

    .line 317
    :cond_0
    sget-object v1, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->b:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    const-class v2, Lcom/twitter/android/media/stickers/timeline/StickerTimelineFragment;

    .line 319
    const v1, 0x7f0a0746

    invoke-virtual {p0, v1}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 320
    const-string/jumbo v3, "sticker_timeline_all"

    .line 321
    const-string/jumbo v1, "recent"

    invoke-virtual {v0, v1, v6}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;Z)Lcom/twitter/app/common/base/g;

    move-result-object v1

    check-cast v1, Lcom/twitter/app/common/list/y;

    const-string/jumbo v6, "query"

    .line 322
    invoke-virtual {v1, v6, v5}, Lcom/twitter/app/common/list/y;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    move-result-object v1

    check-cast v1, Lcom/twitter/app/common/list/y;

    const-string/jumbo v5, "sticker_id"

    iget-wide v6, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->g:J

    .line 323
    invoke-virtual {v1, v5, v6, v7}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;J)Lcom/twitter/app/common/base/g;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_0

    .line 325
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/model/core/TwitterUser;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->i:Lcom/twitter/model/core/TwitterUser;

    return-object p1
.end method

.method static synthetic a(Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->a(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;Lcom/twitter/library/service/x;I)Z
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->b(Lcom/twitter/library/service/x;I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;)Lcom/twitter/model/core/TwitterUser;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->i:Lcom/twitter/model/core/TwitterUser;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->a(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic c(Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->a(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic d(Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->p()V

    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 157
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->n:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 159
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v2, "https"

    .line 160
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "twitter.com"

    .line 161
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "i"

    .line 162
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "stickers"

    .line 163
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->g:J

    .line 164
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->e:Lcom/twitter/android/kj;

    invoke-virtual {v2}, Lcom/twitter/android/kj;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 168
    iget-object v2, v0, Lcom/twitter/library/client/ax;->e:Ljava/lang/String;

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.twitter.timeline_url_shared"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "sticker_scribe_shared_page"

    .line 170
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 171
    const/high16 v3, 0x8000000

    .line 172
    invoke-static {p0, v4, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 173
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-static {p0, v1, v4, v0}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/IntentSender;)V

    .line 175
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 176
    invoke-static {v0, v1, v2}, Lcom/twitter/android/media/imageeditor/stickers/c;->b(JLjava/lang/String;)V

    .line 177
    return-void
.end method

.method private l()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 278
    return-void
.end method

.method private m()Ljava/lang/String;
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->j:Lcpf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->j:Lcpf;

    iget-wide v0, v0, Lcpf;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "entity_id:9.41."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->j:Lcpf;

    iget-wide v2, v1, Lcpf;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private p()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 423
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->i:Lcom/twitter/model/core/TwitterUser;

    if-nez v0, :cond_0

    .line 444
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->h:Landroid/view/ViewGroup;

    const v1, 0x7f13004c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    .line 427
    new-array v1, v3, [Lcom/twitter/internal/android/widget/TypefacesSpan;

    new-instance v2, Lcom/twitter/internal/android/widget/TypefacesSpan;

    invoke-direct {v2, p0, v3}, Lcom/twitter/internal/android/widget/TypefacesSpan;-><init>(Landroid/content/Context;I)V

    aput-object v2, v1, v5

    .line 428
    const v2, 0x7f0a0888

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->i:Lcom/twitter/model/core/TwitterUser;

    .line 429
    invoke-virtual {v4}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "{{}}"

    .line 428
    invoke-static {v1, v2, v3}, Lcom/twitter/library/util/an;->a([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->h:Landroid/view/ViewGroup;

    const v1, 0x7f130753

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 431
    iget-object v1, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->i:Lcom/twitter/model/core/TwitterUser;

    iget-boolean v1, v1, Lcom/twitter/model/core/TwitterUser;->n:Z

    if-eqz v1, :cond_1

    .line 432
    const v1, 0x7f0a041d

    invoke-virtual {p0, v1}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 433
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 437
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->h:Landroid/view/ViewGroup;

    const v1, 0x7f130752

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/media/stickers/timeline/b;

    invoke-direct {v1, p0}, Lcom/twitter/android/media/stickers/timeline/b;-><init>(Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 435
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private r()V
    .locals 4

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 478
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->h:Landroid/view/ViewGroup;

    const v2, 0x7f130750

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 480
    iget-object v2, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->j:Lcpf;

    if-eqz v2, :cond_1

    .line 481
    iget-object v2, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->j:Lcpf;

    iget-object v2, v2, Lcpf;->e:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/twitter/util/ui/h;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 482
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->h:Landroid/view/ViewGroup;

    const v1, 0x7f130751

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->f:Lcom/twitter/media/ui/image/MediaImageView;

    .line 483
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->f:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, p0}, Lcom/twitter/media/ui/image/MediaImageView;->setOnImageLoadedListener(Lcom/twitter/media/ui/image/f;)V

    .line 484
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->f:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v1, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->j:Lcpf;

    iget-object v1, v1, Lcpf;->j:Lcpu;

    iget-object v1, v1, Lcpu;->c:Lcpk;

    iget-object v1, v1, Lcpk;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    new-instance v2, Lcom/twitter/library/media/util/ad;

    iget-object v3, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->j:Lcpf;

    iget-object v3, v3, Lcpf;->j:Lcpu;

    invoke-direct {v2, v3}, Lcom/twitter/library/media/util/ad;-><init>(Lcpu;)V

    .line 485
    invoke-virtual {v1, v2}, Lcom/twitter/media/request/b;->a(Lcom/twitter/media/request/d;)Lcom/twitter/media/request/b;

    move-result-object v1

    .line 484
    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 487
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->i:Lcom/twitter/model/core/TwitterUser;

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Lcom/twitter/android/media/stickers/timeline/c;

    iget-object v1, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->j:Lcpf;

    iget-wide v2, v1, Lcpf;->i:J

    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/twitter/android/media/stickers/timeline/c;-><init>(Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;JLcom/twitter/library/client/Session;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/stickers/timeline/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 495
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->e:Lcom/twitter/android/kj;

    invoke-virtual {v0}, Lcom/twitter/android/kj;->notifyDataSetChanged()V

    .line 496
    return-void

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->p()V

    goto :goto_0

    .line 493
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/res/Resources;)I
    .locals 1

    .prologue
    .line 282
    const v0, 0x7f0f0490

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/util/List;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;",
            "Landroid/support/v4/view/ViewPager;",
            ")",
            "Landroid/support/v4/view/PagerAdapter;"
        }
    .end annotation

    .prologue
    .line 353
    new-instance v0, Lcom/twitter/android/media/stickers/timeline/d;

    iget-object v4, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->p:Lcom/twitter/internal/android/widget/HorizontalListView;

    iget-object v5, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->e:Lcom/twitter/android/kj;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/media/stickers/timeline/d;-><init>(Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;Ljava/util/List;Landroid/support/v4/view/ViewPager;Lcom/twitter/internal/android/widget/HorizontalListView;Lcom/twitter/android/kj;)V

    return-object v0
.end method

.method protected a(Ljava/util/List;)Landroid/widget/BaseAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;)",
            "Landroid/widget/BaseAdapter;"
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lcom/twitter/android/kj;

    invoke-direct {v0, p1}, Lcom/twitter/android/kj;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->e:Lcom/twitter/android/kj;

    .line 347
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->e:Lcom/twitter/android/kj;

    return-object v0
.end method

.method protected a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Lcom/twitter/android/ny;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Lcom/twitter/android/ny;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p3}, Lcom/twitter/android/ny;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(I)V
    .locals 1

    .prologue
    .line 358
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderActivity;->a(I)V

    .line 359
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->e:Lcom/twitter/android/kj;

    invoke-virtual {v0}, Lcom/twitter/android/kj;->a()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->n:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 361
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->e:Lcom/twitter/android/kj;

    invoke-virtual {v0, p1}, Lcom/twitter/android/kj;->a(I)V

    .line 363
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 372
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->f:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->f:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 374
    iget-object v1, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->f:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v1}, Lcom/twitter/media/ui/image/MediaImageView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 375
    iget v2, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->r:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 376
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->i()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 377
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 379
    iget-object v1, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->f:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->setTranslationY(F)V

    .line 381
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->h:Landroid/view/ViewGroup;

    const v1, 0x7f130752

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 382
    const v1, 0x7f13004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 383
    if-eqz v1, :cond_0

    .line 384
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    sub-float v1, v2, v1

    .line 385
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 388
    :cond_0
    return-void
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method public a(Lcom/twitter/android/media/stickers/timeline/StickerTimelineFragment;)V
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p1}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineFragment;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->j:Lcpf;

    if-eqz v0, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineFragment;->a(Ljava/lang/String;)V

    .line 474
    :cond_0
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;I)V
    .locals 1

    .prologue
    .line 541
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ScrollingHeaderActivity;->a(Lcom/twitter/library/service/x;I)V

    .line 542
    check-cast p1, Lbvg;

    .line 543
    iget-object v0, p1, Lbvg;->a:Lcom/twitter/model/core/TwitterUser;

    iput-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->i:Lcom/twitter/model/core/TwitterUser;

    .line 544
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->p()V

    .line 545
    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/media/ui/image/BaseMediaImageView;Lcom/twitter/media/request/ImageResponse;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->a(Lcom/twitter/media/ui/image/MediaImageView;Lcom/twitter/media/request/ImageResponse;)V

    return-void
.end method

.method public a(Lcom/twitter/media/ui/image/MediaImageView;Lcom/twitter/media/request/ImageResponse;)V
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p2}, Lcom/twitter/media/request/ImageResponse;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 417
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0, v0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->a(Landroid/graphics/Bitmap;)V

    .line 420
    :cond_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->c(Ljava/util/List;)V

    return-void
.end method

.method public a(Lcyd;)Z
    .locals 1

    .prologue
    .line 145
    invoke-interface {p1}, Lcyd;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 151
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderActivity;->a(Lcyd;)Z

    move-result v0

    :goto_0
    return v0

    .line 147
    :pswitch_0
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->h()V

    .line 148
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x7f1307f6
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderActivity;->a(Lcyg;)Z

    .line 129
    const v0, 0x7f14002e

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcyg;)I
    .locals 3

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderActivity;->b(Lcyg;)I

    .line 137
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 138
    const v1, 0x7f1307cc

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbjl;->b(Z)Lbjl;

    .line 139
    const v1, 0x7f1307f6

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbjl;->b(Z)Lbjl;

    .line 140
    const/4 v0, 0x2

    return v0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "sticker_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->g:J

    .line 190
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "sticker_tab"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 193
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f04039a

    iget-object v4, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->o:Lcom/twitter/android/widget/UnboundedFrameLayout;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->h:Landroid/view/ViewGroup;

    .line 195
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->h:Landroid/view/ViewGroup;

    const v3, 0x7f130750

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 196
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12016c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 198
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ScrollingHeaderActivity;->b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V

    .line 200
    invoke-static {}, Lcbd;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    const v0, 0x7f0a088a

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->finish()V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    if-eq v1, v6, :cond_2

    .line 208
    sget-object v0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "live"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->d:Ljava/util/List;

    const-string/jumbo v1, "all"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 210
    :goto_1
    iget-object v1, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->n:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 211
    iget-object v1, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->e:Lcom/twitter/android/kj;

    invoke-virtual {v1, v0}, Lcom/twitter/android/kj;->a(I)V

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->h:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->setHeaderView(Landroid/view/View;)V

    .line 216
    if-nez p1, :cond_5

    .line 217
    new-instance v6, Lcef;

    new-instance v0, Lcem;

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->g:J

    .line 219
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcem;-><init>(IJJ)V

    invoke-direct {v6, p0, v0}, Lcef;-><init>(Landroid/content/Context;Lcem;)V

    .line 220
    invoke-virtual {v6, p0}, Lcef;->a(Lavg;)V

    .line 226
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 231
    new-instance v0, Lcom/twitter/android/media/stickers/timeline/a;

    invoke-direct {v0, p0}, Lcom/twitter/android/media/stickers/timeline/a;-><init>(Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;)V

    iput-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->k:Landroid/content/BroadcastReceiver;

    .line 248
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->k:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.twitter.timeline_url_shared"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 208
    :cond_3
    sget-object v0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->c:[Landroid/net/Uri;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    .line 222
    :cond_5
    const-string/jumbo v0, "sticker_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iput-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->i:Lcom/twitter/model/core/TwitterUser;

    .line 223
    const-string/jumbo v0, "sticker_data"

    sget-object v1, Lcpf;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    iput-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->j:Lcpf;

    .line 224
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->r()V

    goto :goto_2
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcpf;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 448
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 449
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    iput-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->j:Lcpf;

    .line 450
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->r()V

    .line 452
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->e:Lcom/twitter/android/kj;

    invoke-virtual {v0}, Lcom/twitter/android/kj;->b()Ljava/util/List;

    move-result-object v1

    .line 453
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 454
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 455
    invoke-virtual {v0, v2}, Lcom/twitter/library/client/ax;->a(Landroid/support/v4/app/FragmentManager;)Lcom/twitter/app/common/base/BaseFragment;

    move-result-object v0

    .line 456
    instance-of v4, v0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineFragment;

    if-eqz v4, :cond_0

    .line 457
    check-cast v0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineFragment;

    invoke-direct {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->e:Lcom/twitter/android/kj;

    invoke-virtual {v0}, Lcom/twitter/android/kj;->a()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 461
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    iget-object v0, v0, Lcom/twitter/library/client/ax;->e:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/twitter/android/media/imageeditor/stickers/c;->a(JLjava/lang/String;)V

    .line 467
    :goto_1
    return-void

    .line 464
    :cond_2
    const v0, 0x7f0a088a

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 465
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->finish()V

    goto :goto_1
.end method

.method protected d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 293
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->c:[Landroid/net/Uri;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 294
    sget-object v2, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->c:[Landroid/net/Uri;

    aget-object v2, v2, v0

    invoke-direct {p0, v2, v0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->a(Landroid/net/Uri;I)Lcom/twitter/library/client/ax;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderActivity;->onDestroy()V

    .line 270
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 273
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderActivity;->onResume()V

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->l()V

    .line 265
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 255
    const-string/jumbo v0, "sticker_user"

    iget-object v1, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->i:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 256
    const-string/jumbo v0, "sticker_data"

    iget-object v1, p0, Lcom/twitter/android/media/stickers/timeline/StickerTimelineActivity;->j:Lcpf;

    sget-object v2, Lcpf;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 257
    return-void
.end method

.method public t()F
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method
