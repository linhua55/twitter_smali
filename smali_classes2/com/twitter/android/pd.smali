.class public Lcom/twitter/android/pd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/kn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/android/kn",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/SearchResultsFragment;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/android/SearchResultsFragment;)V
    .locals 1

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/pd;->b:Ljava/util/Set;

    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;)V
    .locals 3

    .prologue
    .line 1245
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    .line 1246
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/pd;->b:Ljava/util/Set;

    iget-object v2, v0, Lcss;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1247
    iget-object v1, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    invoke-static {v1}, Lcom/twitter/android/SearchResultsFragment;->l(Lcom/twitter/android/SearchResultsFragment;)Lcom/twitter/android/client/c;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->a:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    .line 1249
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 1106
    .line 1107
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ox;

    .line 1108
    iget-object v1, v0, Lcom/twitter/android/ox;->m:Lcom/twitter/android/pg;

    .line 1109
    iget-object v2, v0, Lcom/twitter/android/ox;->j:Lcom/twitter/android/widget/TopicView;

    .line 1110
    const-string/jumbo v3, "page"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1111
    iget-wide v4, v1, Lcom/twitter/android/pg;->a:J

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 1112
    iget-object v6, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    invoke-static {v6}, Lcom/twitter/android/SearchResultsFragment;->b(Lcom/twitter/android/SearchResultsFragment;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1114
    iget-object v4, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    invoke-static {v4}, Lcom/twitter/android/SearchResultsFragment;->c(Lcom/twitter/android/SearchResultsFragment;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v4

    .line 1115
    iget v5, v1, Lcom/twitter/android/pg;->b:I

    packed-switch v5, :pswitch_data_0

    .line 1232
    :pswitch_0
    const/4 v0, 0x0

    .line 1237
    :goto_0
    if-eqz v0, :cond_0

    .line 1238
    const-string/jumbo v1, "position"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 1239
    iget-object v1, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    invoke-static {v1}, Lcom/twitter/android/SearchResultsFragment;->k(Lcom/twitter/android/SearchResultsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1242
    :cond_0
    return-void

    .line 1118
    :pswitch_1
    iget-object v0, v0, Lcom/twitter/android/ox;->a:Lcom/twitter/android/vy;

    iget-object v0, v0, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/TweetView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 1119
    invoke-direct {p0, v0}, Lcom/twitter/android/pd;->a(Lcom/twitter/model/core/Tweet;)V

    .line 1120
    iget-object v1, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    .line 1121
    invoke-virtual {v1}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 1120
    invoke-static {v1, v0, v4, v2}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 1122
    const-string/jumbo v1, "reason_text"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->B:Ljava/lang/String;

    goto :goto_0

    .line 1126
    :pswitch_2
    iget-object v1, v0, Lcom/twitter/android/ox;->a:Lcom/twitter/android/vy;

    iget-object v1, v1, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v1}, Lcom/twitter/library/widget/TweetView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v1

    .line 1127
    invoke-direct {p0, v1}, Lcom/twitter/android/pd;->a(Lcom/twitter/model/core/Tweet;)V

    .line 1128
    iget-object v2, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    .line 1129
    invoke-virtual {v2}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lcom/twitter/android/ox;->m:Lcom/twitter/android/pg;

    iget-object v0, v0, Lcom/twitter/android/pg;->k:Lcom/twitter/model/search/j;

    .line 1130
    invoke-virtual {v0}, Lcom/twitter/model/search/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 1128
    invoke-static {v2, v1, v4, v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    goto :goto_0

    .line 1134
    :pswitch_3
    iget-object v0, v0, Lcom/twitter/android/ox;->a:Lcom/twitter/android/vy;

    iget-object v0, v0, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/TweetView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 1135
    invoke-direct {p0, v0}, Lcom/twitter/android/pd;->a(Lcom/twitter/model/core/Tweet;)V

    .line 1136
    iget-object v1, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    .line 1137
    invoke-virtual {v1}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "news"

    .line 1136
    invoke-static {v1, v0, v4, v2}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    goto :goto_0

    .line 1142
    :pswitch_4
    iget-object v0, v0, Lcom/twitter/android/ox;->a:Lcom/twitter/android/vy;

    iget-object v0, v0, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/TweetView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 1143
    invoke-direct {p0, v0}, Lcom/twitter/android/pd;->a(Lcom/twitter/model/core/Tweet;)V

    .line 1144
    iget-object v1, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    .line 1145
    invoke-virtual {v1}, Lcom/twitter/android/SearchResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "highlight"

    .line 1144
    invoke-static {v1, v0, v4, v2}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    goto/16 :goto_0

    .line 1150
    :pswitch_5
    check-cast p1, Lcom/twitter/internal/android/widget/GroupedRowView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/widget/GroupedRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/UserView;

    .line 1151
    invoke-virtual {v0}, Lcom/twitter/library/widget/UserView;->getPromotedContent()Lcss;

    move-result-object v1

    .line 1152
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/twitter/android/pd;->b:Ljava/util/Set;

    iget-object v3, v1, Lcss;->c:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1153
    iget-object v2, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    invoke-static {v2}, Lcom/twitter/android/SearchResultsFragment;->d(Lcom/twitter/android/SearchResultsFragment;)Lcom/twitter/android/client/c;

    move-result-object v2

    sget-object v3, Lcom/twitter/library/api/PromotedEvent;->a:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {v2, v3, v1}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    .line 1155
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/library/widget/UserView;->getUserId()J

    move-result-wide v2

    const/4 v0, 0x0

    const-string/jumbo v4, "list"

    invoke-static {v2, v3, v1, v0, v4}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLcss;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    goto/16 :goto_0

    .line 1160
    :pswitch_6
    iget-object v0, v0, Lcom/twitter/android/ox;->d:Landroid/support/v4/view/ViewPager;

    .line 1161
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/xe;

    .line 1163
    invoke-virtual {v0, v3}, Lcom/twitter/android/xe;->a(I)Lcom/twitter/android/xj;

    move-result-object v0

    .line 1164
    iget v1, v0, Lcom/twitter/android/xj;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1165
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    invoke-static {v2}, Lcom/twitter/android/SearchResultsFragment;->e(Lcom/twitter/android/SearchResultsFragment;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    iget-object v4, v4, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    .line 1166
    invoke-virtual {v4}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "user_gallery"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "impression"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    .line 1165
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 1167
    iget-object v1, v0, Lcom/twitter/android/xj;->e:Lcss;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/pd;->b:Ljava/util/Set;

    iget-object v2, v0, Lcom/twitter/android/xj;->e:Lcss;

    iget-object v2, v2, Lcss;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1168
    iget-object v1, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    invoke-static {v1}, Lcom/twitter/android/SearchResultsFragment;->f(Lcom/twitter/android/SearchResultsFragment;)Lcom/twitter/android/client/c;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->a:Lcom/twitter/library/api/PromotedEvent;

    iget-object v3, v0, Lcom/twitter/android/xj;->e:Lcss;

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    .line 1171
    :cond_2
    iget-wide v2, v0, Lcom/twitter/android/xj;->d:J

    iget-object v0, v0, Lcom/twitter/android/xj;->e:Lcss;

    const/4 v1, 0x0

    const-string/jumbo v4, "list"

    invoke-static {v2, v3, v0, v1, v4}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLcss;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    goto/16 :goto_0

    .line 1174
    :cond_3
    const/4 v0, 0x0

    .line 1176
    goto/16 :goto_0

    .line 1179
    :pswitch_7
    iget-object v0, v1, Lcom/twitter/android/pg;->h:Ljava/lang/String;

    const-string/jumbo v1, "related_query"

    invoke-static {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    goto/16 :goto_0

    .line 1184
    :pswitch_8
    iget-object v0, v1, Lcom/twitter/android/pg;->g:Lcom/twitter/model/search/g;

    iget-object v0, v0, Lcom/twitter/model/search/g;->b:Ljava/lang/String;

    const-string/jumbo v1, "spelling_correction"

    invoke-static {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    goto/16 :goto_0

    .line 1189
    :pswitch_9
    iget-object v0, v1, Lcom/twitter/android/pg;->k:Lcom/twitter/model/search/j;

    invoke-virtual {v0}, Lcom/twitter/model/search/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 1190
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    invoke-static {v3}, Lcom/twitter/android/SearchResultsFragment;->g(Lcom/twitter/android/SearchResultsFragment;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    iget-object v5, v5, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    .line 1191
    invoke-virtual {v5}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "impression"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 1190
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 1192
    iget-object v1, v1, Lcom/twitter/android/pg;->k:Lcom/twitter/model/search/j;

    iget-object v1, v1, Lcom/twitter/model/search/j;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    goto/16 :goto_0

    .line 1197
    :pswitch_a
    iget-object v0, v1, Lcom/twitter/android/pg;->k:Lcom/twitter/model/search/j;

    invoke-virtual {v0}, Lcom/twitter/model/search/j;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1198
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    invoke-static {v2}, Lcom/twitter/android/SearchResultsFragment;->h(Lcom/twitter/android/SearchResultsFragment;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    iget-object v4, v4, Lcom/twitter/android/SearchResultsFragment;->B:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    .line 1199
    invoke-virtual {v4}, Lcom/twitter/android/SearchResultsFragment;->U()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v1, v1, Lcom/twitter/android/pg;->k:Lcom/twitter/model/search/j;

    invoke-virtual {v1}, Lcom/twitter/model/search/j;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x3

    const/4 v3, 0x0

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string/jumbo v3, "impression"

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1198
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1202
    :cond_4
    const/4 v0, 0x0

    .line 1203
    goto/16 :goto_0

    .line 1207
    :pswitch_b
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 1208
    const/16 v1, 0x10

    iput v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 1209
    iget-object v1, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    invoke-static {v1}, Lcom/twitter/android/SearchResultsFragment;->i(Lcom/twitter/android/SearchResultsFragment;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1210
    const-string/jumbo v1, "single"

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    .line 1211
    iget-object v1, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    iget-object v1, v1, Lcom/twitter/android/SearchResultsFragment;->D:Ljava/lang/String;

    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 1213
    :cond_5
    iget-object v1, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    invoke-virtual {v2}, Lcom/twitter/android/widget/TopicView;->getTopicType()I

    move-result v2

    iput v2, v1, Lcom/twitter/android/SearchResultsFragment;->q:I

    goto/16 :goto_0

    .line 1218
    :pswitch_c
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    .line 1219
    invoke-static {v1}, Lcom/twitter/android/SearchResultsFragment;->j(Lcom/twitter/android/SearchResultsFragment;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "search:universal_top::recommendation:show"

    aput-object v3, v1, v2

    .line 1220
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1221
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v1}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 1222
    iget-object v2, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    iget-object v2, v2, Lcom/twitter/android/SearchResultsFragment;->D:Ljava/lang/String;

    iput-object v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 1223
    iget-object v2, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    iget-object v2, v2, Lcom/twitter/android/SearchResultsFragment;->u:Ljava/lang/String;

    iput-object v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->w:Ljava/lang/String;

    .line 1224
    const/16 v2, 0xc

    iput v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 1225
    iget-object v2, p0, Lcom/twitter/android/pd;->a:Lcom/twitter/android/SearchResultsFragment;

    iget-object v2, v2, Lcom/twitter/android/SearchResultsFragment;->C:Ljava/lang/String;

    iput-object v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->x:Ljava/lang/String;

    .line 1226
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 1227
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1228
    const/4 v0, 0x0

    .line 1229
    goto/16 :goto_0

    .line 1115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_b
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
