.class public Lcom/twitter/android/av/video/j;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/av/bj;Lcom/twitter/android/av/bq;Lcom/twitter/library/av/playback/ao;Lcom/twitter/android/av/af;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Landroid/view/View$OnClickListener;)Lcom/twitter/android/av/video/h;
    .locals 10

    .prologue
    .line 215
    invoke-static {}, Lcom/twitter/android/av/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Lcom/twitter/android/av/video/b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/av/video/b;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/av/bj;Lcom/twitter/android/av/bq;Lcom/twitter/library/av/playback/ao;Lcom/twitter/android/av/af;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Landroid/view/View$OnClickListener;)V

    .line 219
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/android/av/video/d;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/av/video/d;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Landroid/view/View$OnClickListener;)Lcom/twitter/android/av/video/h;
    .locals 6

    .prologue
    .line 200
    invoke-static {}, Lcom/twitter/android/av/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Lcom/twitter/android/av/video/b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/av/video/b;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Landroid/view/View$OnClickListener;)V

    .line 203
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/android/av/video/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/av/video/d;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
