.class public Lcom/twitter/android/widget/ComposerPoiFragment;
.super Lcom/twitter/android/widget/ComposerLocationFragment;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/twitter/android/geo/l;
.implements Lcom/twitter/android/widget/fb;


# instance fields
.field private A:Z

.field private B:Z

.field private final C:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/android/widget/u;",
            ">;"
        }
    .end annotation
.end field

.field private D:Lcom/twitter/library/scribe/TwitterScribeItem;

.field private E:Lcom/twitter/library/scribe/ScribeGeoDetails;

.field private F:Lcom/twitter/util/ui/e;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ProgressBar;

.field private n:Landroid/widget/ListView;

.field private o:Lcom/twitter/android/widget/s;

.field private p:Lcom/twitter/android/geo/g;

.field private q:Lcom/twitter/android/geo/k;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/TextSwitcher;

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/twitter/android/widget/ComposerLocationFragment;-><init>()V

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->C:Ljava/util/Set;

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 874
    const v0, 0x7f040293

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 875
    const v0, 0x7f130607

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 876
    invoke-virtual {v0, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 877
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 878
    return-object v1
.end method

.method static synthetic a(Lcom/twitter/android/widget/ComposerPoiFragment;Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/widget/ComposerPoiFragment;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/widget/ComposerPoiFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->n:Landroid/widget/ListView;

    return-object v0
.end method

.method private a(Lcom/twitter/model/geo/TwitterPlace;Ljava/lang/String;)V
    .locals 20

    .prologue
    .line 731
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->h:Z

    if-eqz v2, :cond_0

    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->b()Lcom/twitter/android/geo/GeoTagState;

    move-result-object v2

    .line 734
    invoke-virtual {v2}, Lcom/twitter/android/geo/GeoTagState;->d()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    .line 735
    new-instance v2, Lcom/twitter/android/geo/GeoTagState;

    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->r()Lcom/twitter/model/geo/d;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->x:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->q:Lcom/twitter/android/geo/k;

    .line 736
    invoke-virtual {v3}, Lcom/twitter/android/geo/k;->c()Z

    move-result v8

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/twitter/android/geo/GeoTagState;-><init>(Lcom/twitter/model/geo/TwitterPlace;Lcom/twitter/model/geo/d;Ljava/lang/String;ZZZ)V

    .line 735
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ComposerPoiFragment;->a(Lcom/twitter/android/geo/GeoTagState;)V

    .line 737
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "compose:poi:poi_list:location:select"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/twitter/model/geo/TwitterPlace;->b:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/twitter/model/geo/TwitterPlace;->c:Lcom/twitter/model/geo/TwitterPlace$PlaceType;

    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->x:Z

    if-eqz v2, :cond_1

    const-string/jumbo v12, "auto_default"

    :goto_0
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    .line 741
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/twitter/android/geo/PlacePickerModel;->a(Lcom/twitter/model/geo/TwitterPlace;)I

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->o()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "geotag"

    .line 742
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v18

    move-object/from16 v2, p0

    .line 737
    invoke-direct/range {v2 .. v19}, Lcom/twitter/android/widget/ComposerPoiFragment;->a(ZZLjava/lang/String;Ljava/lang/String;Lcom/twitter/model/geo/TwitterPlace$PlaceType;DDLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)V

    .line 752
    :cond_0
    :goto_1
    return-void

    .line 737
    :cond_1
    const-string/jumbo v12, "default"

    goto :goto_0

    .line 743
    :cond_2
    invoke-virtual {v2}, Lcom/twitter/android/geo/GeoTagState;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->E:Lcom/twitter/library/scribe/ScribeGeoDetails;

    iget-object v3, v3, Lcom/twitter/library/scribe/ScribeGeoDetails;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 744
    invoke-virtual {v2}, Lcom/twitter/android/geo/GeoTagState;->e()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v2

    .line 745
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "compose:poi:poi_list:location:select"

    iget-object v6, v2, Lcom/twitter/model/geo/TwitterPlace;->b:Ljava/lang/String;

    iget-object v7, v2, Lcom/twitter/model/geo/TwitterPlace;->c:Lcom/twitter/model/geo/TwitterPlace$PlaceType;

    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    const-string/jumbo v12, "default"

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    .line 748
    invoke-virtual {v15, v2}, Lcom/twitter/android/geo/PlacePickerModel;->a(Lcom/twitter/model/geo/TwitterPlace;)I

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->o()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "geotag"

    .line 749
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v18

    move-object/from16 v2, p0

    .line 745
    invoke-direct/range {v2 .. v19}, Lcom/twitter/android/widget/ComposerPoiFragment;->a(ZZLjava/lang/String;Ljava/lang/String;Lcom/twitter/model/geo/TwitterPlace$PlaceType;DDLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method private a(ZZLjava/lang/String;Ljava/lang/String;Lcom/twitter/model/geo/TwitterPlace$PlaceType;DDLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)V
    .locals 20

    .prologue
    .line 852
    if-eqz p1, :cond_0

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->E:Lcom/twitter/library/scribe/ScribeGeoDetails;

    iget-object v2, v2, Lcom/twitter/library/scribe/ScribeGeoDetails;->c:Ljava/util/List;

    .line 854
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 855
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;

    const-string/jumbo v3, "removed"

    iput-object v3, v2, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;->j:Ljava/lang/String;

    .line 858
    :cond_0
    invoke-static {}, Lcom/twitter/library/scribe/TwitterScribeItem;->b()Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v18

    .line 859
    if-eqz p2, :cond_1

    .line 860
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->E:Lcom/twitter/library/scribe/ScribeGeoDetails;

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-wide/from16 v16, p16

    invoke-virtual/range {v3 .. v17}, Lcom/twitter/library/scribe/ScribeGeoDetails;->a(Ljava/lang/String;Lcom/twitter/model/geo/TwitterPlace$PlaceType;DDLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;

    move-result-object v2

    .line 863
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->am:Lcom/twitter/library/scribe/ScribeGeoDetails;

    iget-object v3, v3, Lcom/twitter/library/scribe/ScribeGeoDetails;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    :goto_0
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->e:J

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    .line 869
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 870
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 868
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 871
    return-void

    .line 865
    :cond_1
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->am:Lcom/twitter/library/scribe/ScribeGeoDetails;

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-wide/from16 v16, p16

    invoke-virtual/range {v3 .. v17}, Lcom/twitter/library/scribe/ScribeGeoDetails;->a(Ljava/lang/String;Lcom/twitter/model/geo/TwitterPlace$PlaceType;DDLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/widget/ComposerPoiFragment;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->B:Z

    return p1
.end method

.method private a(Lcom/twitter/library/api/geo/a;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 610
    iget-boolean v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->w:Z

    if-nez v2, :cond_0

    .line 611
    iput-boolean v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->w:Z

    .line 612
    invoke-direct {p0, v0}, Lcom/twitter/android/widget/ComposerPoiFragment;->f(Z)V

    .line 613
    invoke-virtual {p0, p1, p2, v1}, Lcom/twitter/android/widget/ComposerPoiFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 616
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/widget/ComposerPoiFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/widget/ComposerPoiFragment;Z)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/twitter/android/widget/ComposerPoiFragment;->e(Z)V

    return-void
.end method

.method static synthetic c(Lcom/twitter/android/widget/ComposerPoiFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->C:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/widget/ComposerPoiFragment;)Lcom/twitter/android/geo/g;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->p:Lcom/twitter/android/geo/g;

    return-object v0
.end method

.method private e(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 365
    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->n:Landroid/widget/ListView;

    .line 366
    invoke-direct {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    invoke-direct {p0, v7}, Lcom/twitter/android/widget/ComposerPoiFragment;->h(Z)V

    .line 368
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->r:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    iget-object v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->o:Lcom/twitter/android/widget/s;

    iget-object v3, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->o:Lcom/twitter/android/widget/s;

    .line 370
    invoke-virtual {v3}, Lcom/twitter/android/widget/s;->a()Lcom/twitter/android/geo/i;

    move-result-object v3

    .line 369
    invoke-static {v3, v0}, Lcom/twitter/android/geo/i;->a(Lcom/twitter/android/geo/i;Ljava/lang/String;)Lcom/twitter/android/geo/i;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/s;->a(Lcom/twitter/android/geo/i;)V

    .line 372
    iget-object v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->o:Lcom/twitter/android/widget/s;

    invoke-virtual {v2}, Lcom/twitter/android/widget/s;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->B:Z

    if-nez v2, :cond_1

    .line 373
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->p:Lcom/twitter/android/geo/g;

    invoke-virtual {v0}, Lcom/twitter/android/geo/g;->a()V

    .line 390
    :cond_0
    :goto_0
    invoke-direct {p0, v6}, Lcom/twitter/android/widget/ComposerPoiFragment;->f(Z)V

    .line 391
    invoke-direct {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->p()V

    .line 392
    invoke-virtual {v1, v6, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 393
    return-void

    .line 374
    :cond_1
    iget-boolean v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->B:Z

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->p:Lcom/twitter/android/geo/g;

    const v3, 0x7f0a066b

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/twitter/android/widget/ComposerPoiFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/geo/g;->a(Ljava/lang/CharSequence;)V

    .line 376
    if-eqz p1, :cond_0

    .line 377
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v2}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 378
    iput-object v0, v2, Lcom/twitter/library/scribe/TwitterScribeItem;->w:Ljava/lang/String;

    .line 379
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->e:J

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "compose:poi:poi_list::filter"

    aput-object v4, v3, v6

    .line 380
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 381
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 379
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->o:Lcom/twitter/android/widget/s;

    new-instance v2, Lcom/twitter/android/geo/i;

    iget-object v3, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    sget-object v4, Lcom/twitter/android/geo/PlacePickerModel$PlaceListSource;->a:Lcom/twitter/android/geo/PlacePickerModel$PlaceListSource;

    invoke-direct {v2, v3, v4}, Lcom/twitter/android/geo/i;-><init>(Lcom/twitter/android/geo/PlacePickerModel;Lcom/twitter/android/geo/PlacePickerModel$PlaceListSource;)V

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/s;->a(Lcom/twitter/android/geo/i;)V

    .line 387
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->p:Lcom/twitter/android/geo/g;

    invoke-virtual {v0}, Lcom/twitter/android/geo/g;->a()V

    .line 388
    invoke-direct {p0, v6}, Lcom/twitter/android/widget/ComposerPoiFragment;->h(Z)V

    goto :goto_0
.end method

.method private f(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 676
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->m:Landroid/widget/ProgressBar;

    if-nez v0, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->n:Landroid/widget/ListView;

    .line 680
    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->r:Landroid/widget/EditText;

    .line 681
    if-eqz p1, :cond_2

    .line 682
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 683
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 684
    invoke-direct {p0, v3}, Lcom/twitter/android/widget/ComposerPoiFragment;->g(Z)V

    .line 685
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 687
    :cond_2
    iget-boolean v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->w:Z

    if-nez v2, :cond_0

    .line 688
    iget-object v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 689
    iget-object v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->o:Lcom/twitter/android/widget/s;

    invoke-virtual {v2}, Lcom/twitter/android/widget/s;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->B:Z

    if-eqz v2, :cond_4

    .line 690
    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 696
    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 693
    :cond_4
    invoke-direct {p0, v5}, Lcom/twitter/android/widget/ComposerPoiFragment;->g(Z)V

    .line 694
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private g(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 706
    if-nez p1, :cond_1

    .line 707
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->t_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->g:Lcom/twitter/model/geo/d;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 714
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f0a05ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 715
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->l:Landroid/widget/TextView;

    const v1, 0x7f0a05ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 716
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 721
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 717
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->o:Lcom/twitter/android/widget/s;

    invoke-virtual {v0}, Lcom/twitter/android/widget/s;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f0a05af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 719
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private h(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 809
    invoke-virtual {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 810
    if-nez p1, :cond_1

    .line 811
    iget v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->t:I

    if-ne v1, v4, :cond_0

    .line 812
    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->s:Landroid/widget/TextSwitcher;

    const v2, 0x7f050037

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 813
    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->s:Landroid/widget/TextSwitcher;

    const v2, 0x7f050036

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 814
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->s:Landroid/widget/TextSwitcher;

    const v1, 0x7f0a0667

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/ComposerPoiFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 815
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->t:I

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->b()Lcom/twitter/android/geo/GeoTagState;

    move-result-object v1

    .line 819
    iget v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->t:I

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/twitter/android/geo/GeoTagState;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 820
    iget-object v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->s:Landroid/widget/TextSwitcher;

    const v3, 0x7f050039

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 821
    iget-object v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->s:Landroid/widget/TextSwitcher;

    const v3, 0x7f050038

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 822
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->s:Landroid/widget/TextSwitcher;

    invoke-virtual {v1}, Lcom/twitter/android/geo/GeoTagState;->e()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/model/geo/TwitterPlace;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 823
    iput v4, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->t:I

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->r:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->r:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 756
    iget-object v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->E:Lcom/twitter/library/scribe/ScribeGeoDetails;

    iput v1, v2, Lcom/twitter/library/scribe/ScribeGeoDetails;->b:I

    .line 757
    iget-object v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->r:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 758
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 759
    iput-boolean v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->B:Z

    .line 760
    invoke-virtual {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 761
    new-instance v4, Lcom/twitter/library/api/geo/a;

    iget-object v5, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->d:Lcom/twitter/library/client/Session;

    invoke-direct {v4, v3, v5}, Lcom/twitter/library/api/geo/a;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const-string/jumbo v5, "tweet_compose_location"

    .line 762
    invoke-virtual {v4, v5}, Lcom/twitter/library/api/geo/a;->a(Ljava/lang/String;)Lcom/twitter/library/api/geo/a;

    move-result-object v4

    .line 763
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/twitter/library/api/geo/a;->b(Ljava/lang/String;)Lcom/twitter/library/api/geo/a;

    move-result-object v4

    .line 764
    invoke-static {v3}, Lcom/twitter/library/util/au;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/twitter/library/api/geo/a;->a(Ljava/util/List;)Lcom/twitter/library/api/geo/a;

    move-result-object v3

    .line 765
    invoke-direct {p0, v3, v1}, Lcom/twitter/android/widget/ComposerPoiFragment;->a(Lcom/twitter/library/api/geo/a;I)Z

    .line 766
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v3}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 767
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/twitter/library/scribe/TwitterScribeItem;->w:Ljava/lang/String;

    .line 768
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->e:J

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v4, v1, [Ljava/lang/String;

    const-string/jumbo v5, "compose:poi:poi_list::search"

    aput-object v5, v4, v0

    .line 769
    invoke-virtual {v2, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 770
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 768
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    move v0, v1

    .line 773
    :cond_0
    return v0
.end method

.method private n()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 778
    iput-boolean v4, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->z:Z

    .line 779
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->C:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    :goto_0
    return-void

    .line 782
    :cond_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->e:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "compose:poi:poi_list:location:results"

    aput-object v2, v1, v4

    .line 783
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 784
    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->C:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/u;

    .line 785
    invoke-static {}, Lcom/twitter/library/scribe/TwitterScribeItem;->b()Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v3

    .line 786
    new-instance v4, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;

    invoke-direct {v4}, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;-><init>()V

    .line 787
    iget-object v5, v1, Lcom/twitter/android/widget/u;->a:Ljava/lang/String;

    iput-object v5, v4, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;->a:Ljava/lang/String;

    .line 788
    iget-object v5, v1, Lcom/twitter/android/widget/u;->b:Lcom/twitter/model/geo/TwitterPlace$PlaceType;

    invoke-virtual {v5}, Lcom/twitter/model/geo/TwitterPlace$PlaceType;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;->b:Ljava/lang/String;

    .line 789
    iget-object v5, v1, Lcom/twitter/android/widget/u;->d:Ljava/lang/String;

    iput-object v5, v4, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;->e:Ljava/lang/String;

    .line 790
    iget v5, v1, Lcom/twitter/android/widget/u;->f:I

    iput v5, v4, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;->g:I

    .line 791
    iget v5, v1, Lcom/twitter/android/widget/u;->e:I

    iput v5, v4, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;->h:I

    .line 792
    iget-object v1, v1, Lcom/twitter/android/widget/u;->c:Ljava/lang/String;

    iput-object v1, v4, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;->i:Ljava/lang/String;

    .line 793
    iget-object v1, v3, Lcom/twitter/library/scribe/TwitterScribeItem;->am:Lcom/twitter/library/scribe/ScribeGeoDetails;

    iget-object v1, v1, Lcom/twitter/library/scribe/ScribeGeoDetails;->c:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    goto :goto_1

    .line 796
    :cond_1
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 797
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->C:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method

.method private o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->r:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    const/4 v0, 0x0

    .line 805
    :cond_0
    return-object v0
.end method

.method private p()V
    .locals 5

    .prologue
    const v4, 0x7f0205db

    const/4 v1, 0x0

    .line 829
    iget-object v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->r:Landroid/widget/EditText;

    .line 830
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 833
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 839
    :goto_0
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 840
    invoke-virtual {v2, v0, v1, v4, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 846
    :goto_1
    return-void

    .line 836
    :cond_0
    const v0, 0x7f0205aa

    goto :goto_0

    .line 843
    :cond_1
    invoke-virtual {v2, v4, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method private r()Lcom/twitter/model/geo/d;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->c:Lccf;

    invoke-virtual {v0}, Lccf;->a()Landroid/location/Location;

    move-result-object v0

    .line 884
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/twitter/model/geo/d;->a(Landroid/location/Location;)Lcom/twitter/model/geo/d;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    .line 135
    const v0, 0x7f040292

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 137
    const v0, 0x1020004

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->j:Landroid/view/View;

    .line 138
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 139
    const v0, 0x7f130604

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->k:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f130605

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->l:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f130046

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->m:Landroid/widget/ProgressBar;

    .line 143
    const v0, 0x7f130603

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ListView;

    .line 144
    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 146
    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 149
    if-eqz p2, :cond_0

    .line 150
    const-string/jumbo v0, "has_search_text_changed_since_last_search"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->B:Z

    .line 152
    const-string/jumbo v0, "place_picker_presenter_source"

    .line 153
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/geo/PlacePickerModel$PlaceListSource;

    move-object v1, v0

    .line 158
    :goto_0
    new-instance v0, Lcom/twitter/android/geo/g;

    invoke-virtual {v6}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v6}, Lcom/twitter/android/geo/g;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->p:Lcom/twitter/android/geo/g;

    .line 159
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->p:Lcom/twitter/android/geo/g;

    invoke-virtual {v0, p0}, Lcom/twitter/android/geo/g;->a(Landroid/view/View$OnClickListener;)V

    .line 161
    new-instance v2, Lcom/twitter/android/geo/k;

    const v0, 0x7f130606

    .line 162
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v2, v0, p0}, Lcom/twitter/android/geo/k;-><init>(Landroid/view/ViewGroup;Lcom/twitter/android/geo/l;)V

    iput-object v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->q:Lcom/twitter/android/geo/k;

    .line 163
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->q:Lcom/twitter/android/geo/k;

    invoke-virtual {v0}, Lcom/twitter/android/geo/k;->b()V

    .line 167
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->p:Lcom/twitter/android/geo/g;

    invoke-virtual {v0}, Lcom/twitter/android/geo/g;->b()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "poi_footer_tag"

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 170
    invoke-virtual {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 171
    new-instance v0, Lcom/twitter/android/widget/s;

    const v2, 0x7f040297

    const v3, 0x7f040298

    iget-object v4, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    new-instance v5, Lcom/twitter/android/geo/i;

    iget-object v9, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    invoke-direct {v5, v9, v1}, Lcom/twitter/android/geo/i;-><init>(Lcom/twitter/android/geo/PlacePickerModel;Lcom/twitter/android/geo/PlacePickerModel$PlaceListSource;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/widget/s;-><init>(Lcom/twitter/android/widget/ComposerPoiFragment;IILcom/twitter/android/geo/PlacePickerModel;Lcom/twitter/android/geo/i;)V

    iput-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->o:Lcom/twitter/android/widget/s;

    .line 174
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->o:Lcom/twitter/android/widget/s;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    iput-object v6, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->n:Landroid/widget/ListView;

    .line 177
    const v0, 0x7f130601

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->s:Landroid/widget/TextSwitcher;

    .line 178
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->s:Landroid/widget/TextSwitcher;

    const v1, 0x7f0a0667

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 179
    const v0, 0x7f130600

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v0, 0x7f130602

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 184
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 185
    new-instance v1, Lcom/twitter/android/widget/fa;

    invoke-direct {v1, v0, p0}, Lcom/twitter/android/widget/fa;-><init>(Landroid/widget/TextView;Lcom/twitter/android/widget/fb;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    iput-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->r:Landroid/widget/EditText;

    .line 188
    return-object v7

    .line 155
    :cond_0
    sget-object v0, Lcom/twitter/android/geo/PlacePickerModel$PlaceListSource;->a:Lcom/twitter/android/geo/PlacePickerModel$PlaceListSource;

    move-object v1, v0

    goto/16 :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-super {p0}, Lcom/twitter/android/widget/ComposerLocationFragment;->a()V

    .line 194
    iget-boolean v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->y:Z

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->f:Lcom/twitter/android/widget/q;

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->v:Z

    .line 197
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->f:Lcom/twitter/android/widget/q;

    invoke-interface {v0, v2}, Lcom/twitter/android/widget/q;->b(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->b()Lcom/twitter/android/geo/GeoTagState;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/twitter/android/geo/GeoTagState;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->f:Lcom/twitter/android/widget/q;

    invoke-virtual {v0}, Lcom/twitter/android/geo/GeoTagState;->e()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/model/geo/TwitterPlace;->d:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/twitter/android/widget/q;->a(Ljava/lang/String;)V

    .line 203
    :cond_0
    iput-boolean v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->y:Z

    .line 205
    :cond_1
    invoke-direct {p0, v2}, Lcom/twitter/android/widget/ComposerPoiFragment;->e(Z)V

    .line 206
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->r:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->F:Lcom/twitter/util/ui/e;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 207
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 469
    if-eqz p1, :cond_0

    .line 470
    invoke-static {p1}, Lcom/twitter/model/geo/d;->a(Landroid/location/Location;)Lcom/twitter/model/geo/d;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->g:Lcom/twitter/model/geo/d;

    .line 471
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->q:Lcom/twitter/android/geo/k;

    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->g:Lcom/twitter/model/geo/d;

    invoke-virtual {v0, v1}, Lcom/twitter/android/geo/k;->a(Lcom/twitter/model/geo/d;)V

    .line 472
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->q:Lcom/twitter/android/geo/k;

    invoke-virtual {v0}, Lcom/twitter/android/geo/k;->a()V

    .line 473
    invoke-virtual {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->j()Z

    .line 475
    :cond_0
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 486
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->M()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 487
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/widget/ComposerLocationFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    check-cast p1, Lcom/twitter/library/api/geo/a;

    .line 491
    iput-boolean v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->w:Z

    .line 492
    invoke-virtual {p1}, Lcom/twitter/library/api/geo/a;->h()Lcom/twitter/library/api/geo/b;

    move-result-object v3

    .line 493
    if-nez v3, :cond_3

    .line 494
    invoke-direct {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->p:Lcom/twitter/android/geo/g;

    invoke-virtual {v0}, Lcom/twitter/android/geo/g;->a()V

    .line 497
    :cond_2
    invoke-direct {p0, v2}, Lcom/twitter/android/widget/ComposerPoiFragment;->f(Z)V

    goto :goto_0

    .line 500
    :cond_3
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 502
    :pswitch_0
    invoke-virtual {p1}, Lcom/twitter/library/api/geo/a;->g()Lcom/twitter/model/geo/d;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_8

    .line 507
    :goto_1
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    invoke-virtual {v4, v0}, Lcom/twitter/android/geo/PlacePickerModel;->b(Lcom/twitter/model/geo/d;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    if-nez v1, :cond_6

    iget-object v4, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    iget-object v5, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->g:Lcom/twitter/model/geo/d;

    .line 508
    invoke-virtual {v4, v5}, Lcom/twitter/android/geo/PlacePickerModel;->a(Lcom/twitter/model/geo/d;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 509
    :cond_5
    new-instance v4, Lcom/twitter/android/geo/f;

    .line 510
    invoke-virtual {v3}, Lcom/twitter/library/api/geo/b;->a()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/twitter/library/api/geo/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/twitter/library/api/geo/b;->d()Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/twitter/android/geo/f;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 512
    iget-object v5, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    if-eqz v1, :cond_9

    :goto_2
    invoke-virtual {v5, v0, v4}, Lcom/twitter/android/geo/PlacePickerModel;->a(Lcom/twitter/model/geo/d;Lcom/twitter/android/geo/f;)Lcom/twitter/android/geo/PlacePickerModel;

    move-result-object v0

    .line 513
    invoke-virtual {v0, v1}, Lcom/twitter/android/geo/PlacePickerModel;->a(Z)Lcom/twitter/android/geo/PlacePickerModel;

    .line 514
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->o:Lcom/twitter/android/widget/s;

    new-instance v4, Lcom/twitter/android/geo/i;

    iget-object v5, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    sget-object v6, Lcom/twitter/android/geo/PlacePickerModel$PlaceListSource;->a:Lcom/twitter/android/geo/PlacePickerModel$PlaceListSource;

    invoke-direct {v4, v5, v6}, Lcom/twitter/android/geo/i;-><init>(Lcom/twitter/android/geo/PlacePickerModel;Lcom/twitter/android/geo/PlacePickerModel$PlaceListSource;)V

    invoke-virtual {v0, v4}, Lcom/twitter/android/widget/s;->a(Lcom/twitter/android/geo/i;)V

    .line 517
    if-eqz v1, :cond_a

    .line 518
    invoke-virtual {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->b()Lcom/twitter/android/geo/GeoTagState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/geo/GeoTagState;->d()Z

    move-result v0

    if-nez v0, :cond_6

    .line 519
    invoke-static {}, Lcom/twitter/android/geo/GeoTagState;->a()Lcom/twitter/android/geo/GeoTagState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ComposerPoiFragment;->a(Lcom/twitter/android/geo/GeoTagState;)V

    .line 526
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->o:Lcom/twitter/android/widget/s;

    invoke-virtual {v0}, Lcom/twitter/android/widget/s;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->i:Z

    if-nez v0, :cond_0

    .line 527
    :cond_7
    invoke-direct {p0, v2}, Lcom/twitter/android/widget/ComposerPoiFragment;->f(Z)V

    goto/16 :goto_0

    :cond_8
    move v1, v2

    .line 503
    goto :goto_1

    .line 512
    :cond_9
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->g:Lcom/twitter/model/geo/d;

    goto :goto_2

    .line 522
    :cond_a
    invoke-virtual {v3}, Lcom/twitter/library/api/geo/b;->b()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v0

    invoke-virtual {v3}, Lcom/twitter/library/api/geo/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/widget/ComposerPoiFragment;->a(Lcom/twitter/model/geo/TwitterPlace;Ljava/lang/String;)V

    goto :goto_3

    .line 534
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/twitter/library/api/geo/b;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 535
    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    new-instance v4, Lcom/twitter/android/geo/f;

    .line 536
    invoke-virtual {v3}, Lcom/twitter/library/api/geo/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/twitter/library/api/geo/b;->d()Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v0, v5, v3}, Lcom/twitter/android/geo/f;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 535
    invoke-virtual {v1, v4}, Lcom/twitter/android/geo/PlacePickerModel;->a(Lcom/twitter/android/geo/f;)Lcom/twitter/android/geo/PlacePickerModel;

    .line 537
    invoke-direct {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 538
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->p:Lcom/twitter/android/geo/g;

    invoke-virtual {v0}, Lcom/twitter/android/geo/g;->a()V

    .line 539
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->o:Lcom/twitter/android/widget/s;

    new-instance v1, Lcom/twitter/android/geo/i;

    iget-object v3, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    sget-object v4, Lcom/twitter/android/geo/PlacePickerModel$PlaceListSource;->b:Lcom/twitter/android/geo/PlacePickerModel$PlaceListSource;

    invoke-direct {v1, v3, v4}, Lcom/twitter/android/geo/i;-><init>(Lcom/twitter/android/geo/PlacePickerModel;Lcom/twitter/android/geo/PlacePickerModel$PlaceListSource;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/s;->a(Lcom/twitter/android/geo/i;)V

    .line 542
    :cond_b
    invoke-direct {p0, v2}, Lcom/twitter/android/widget/ComposerPoiFragment;->f(Z)V

    goto/16 :goto_0

    .line 500
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    invoke-virtual {v0}, Lcom/twitter/android/geo/PlacePickerModel;->c()Lcom/twitter/android/geo/GeoTagState;

    move-result-object v0

    .line 896
    invoke-virtual {v0}, Lcom/twitter/android/geo/GeoTagState;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    invoke-virtual {v0, p1}, Lcom/twitter/android/geo/GeoTagState;->a(Z)Lcom/twitter/android/geo/GeoTagState;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/geo/PlacePickerModel;->a(Lcom/twitter/android/geo/GeoTagState;)Lcom/twitter/android/geo/PlacePickerModel;

    .line 899
    :cond_0
    return-void
.end method

.method public a(ZI)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 629
    iget-boolean v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->x:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->h:Z

    if-eqz v0, :cond_1

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->E:Lcom/twitter/library/scribe/ScribeGeoDetails;

    iput v8, v0, Lcom/twitter/library/scribe/ScribeGeoDetails;->a:I

    .line 631
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->D:Lcom/twitter/library/scribe/TwitterScribeItem;

    iget-wide v4, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->e:J

    iput-wide v4, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 634
    if-nez p1, :cond_2

    .line 635
    const-string/jumbo v0, "composition"

    move-object v1, v2

    move-object v3, v0

    .line 642
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 662
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 638
    :cond_2
    const-string/jumbo v1, "drafts"

    .line 639
    const-string/jumbo v0, "composition"

    move-object v3, v1

    move-object v1, v0

    goto :goto_0

    .line 644
    :pswitch_1
    const-string/jumbo v0, "discard_tweet_geo_interaction"

    .line 658
    :goto_2
    new-instance v4, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v6, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->e:J

    invoke-direct {v4, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v3, v5, v8

    const/4 v3, 0x2

    aput-object v1, v5, v3

    const/4 v1, 0x3

    aput-object v2, v5, v1

    const/4 v1, 0x4

    aput-object v0, v5, v1

    .line 659
    invoke-virtual {v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->D:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 660
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 658
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_1

    .line 648
    :pswitch_2
    const-string/jumbo v0, "send_tweet_geo_interaction"

    goto :goto_2

    .line 642
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 413
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 416
    :goto_0
    if-ne p1, v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->r:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 419
    :cond_0
    return v1

    .line 413
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/geo/d;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 597
    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    invoke-virtual {v1, p1}, Lcom/twitter/android/geo/PlacePickerModel;->b(Lcom/twitter/model/geo/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 599
    if-eqz v1, :cond_0

    .line 600
    new-instance v2, Lcom/twitter/library/api/geo/a;

    iget-object v3, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->d:Lcom/twitter/library/client/Session;

    invoke-direct {v2, v1, v3}, Lcom/twitter/library/api/geo/a;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const-string/jumbo v1, "tweet_compose_location"

    .line 601
    invoke-virtual {v2, v1}, Lcom/twitter/library/api/geo/a;->a(Ljava/lang/String;)Lcom/twitter/library/api/geo/a;

    move-result-object v1

    .line 602
    invoke-virtual {v1, p1}, Lcom/twitter/library/api/geo/a;->a(Lcom/twitter/model/geo/d;)Lcom/twitter/library/api/geo/a;

    move-result-object v1

    .line 603
    invoke-direct {p0, v1, v0}, Lcom/twitter/android/widget/ComposerPoiFragment;->a(Lcom/twitter/library/api/geo/a;I)Z

    move-result v0

    .line 606
    :cond_0
    return v0
.end method

.method public b(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 479
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ComposerLocationFragment;->b(Landroid/location/Location;)V

    .line 481
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/ComposerPoiFragment;->f(Z)V

    .line 482
    return-void
.end method

.method protected b(Z)V
    .locals 2

    .prologue
    .line 666
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ComposerLocationFragment;->b(Z)V

    .line 667
    iget-boolean v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->h:Z

    if-nez v0, :cond_0

    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->g:Lcom/twitter/model/geo/d;

    .line 669
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->r:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->r:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 673
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 553
    iget-boolean v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->h:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->f:Lcom/twitter/android/widget/q;

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->e:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "compose:poi::poi_tag:click"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 555
    invoke-virtual {p0, v4}, Lcom/twitter/android/widget/ComposerPoiFragment;->d(Z)V

    .line 557
    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 568
    iput-boolean v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->x:Z

    .line 569
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->g:Lcom/twitter/model/geo/d;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    invoke-virtual {v1}, Lcom/twitter/android/geo/PlacePickerModel;->c()Lcom/twitter/android/geo/GeoTagState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/geo/GeoTagState;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->q:Lcom/twitter/android/geo/k;

    invoke-virtual {v1}, Lcom/twitter/android/geo/k;->a()V

    .line 573
    :cond_1
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ComposerPoiFragment;->b(Z)V

    .line 574
    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    invoke-virtual {v1}, Lcom/twitter/android/geo/PlacePickerModel;->b()Lcom/twitter/model/geo/d;

    move-result-object v1

    if-nez v1, :cond_2

    .line 575
    invoke-direct {p0, v0}, Lcom/twitter/android/widget/ComposerPoiFragment;->f(Z)V

    .line 578
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->f:Lcom/twitter/android/widget/q;

    if-eqz v1, :cond_3

    .line 579
    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->f:Lcom/twitter/android/widget/q;

    if-nez p1, :cond_4

    :goto_0
    invoke-interface {v1, v0}, Lcom/twitter/android/widget/q;->b(Z)V

    .line 581
    :cond_3
    return-void

    .line 579
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->r:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->F:Lcom/twitter/util/ui/e;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 212
    invoke-super {p0}, Lcom/twitter/android/widget/ComposerLocationFragment;->e()V

    .line 213
    return-void
.end method

.method public e(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 428
    packed-switch p1, :pswitch_data_0

    .line 461
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 430
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->z:Z

    goto :goto_0

    .line 435
    :pswitch_2
    iget-boolean v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->A:Z

    if-eqz v0, :cond_2

    .line 436
    invoke-direct {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->o:Lcom/twitter/android/widget/s;

    invoke-virtual {v0}, Lcom/twitter/android/widget/s;->notifyDataSetChanged()V

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 440
    iput-boolean v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->A:Z

    .line 442
    :cond_2
    invoke-direct {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 443
    iget-boolean v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->w:Z

    if-eqz v0, :cond_3

    .line 444
    iput-boolean v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->w:Z

    .line 445
    invoke-direct {p0, v2}, Lcom/twitter/android/widget/ComposerPoiFragment;->f(Z)V

    .line 447
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->r:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 449
    :cond_4
    iget-boolean v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->v:Z

    if-eqz v0, :cond_5

    .line 450
    iput-boolean v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->v:Z

    .line 452
    :cond_5
    iget-boolean v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->z:Z

    if-eqz v0, :cond_0

    .line 453
    invoke-direct {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->n()V

    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->q:Lcom/twitter/android/geo/k;

    if-nez v0, :cond_0

    .line 561
    const/4 v0, 0x0

    .line 564
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->q:Lcom/twitter/android/geo/k;

    invoke-virtual {v0}, Lcom/twitter/android/geo/k;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public j()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 584
    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    iget-object v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->g:Lcom/twitter/model/geo/d;

    invoke-virtual {v1, v2}, Lcom/twitter/android/geo/PlacePickerModel;->a(Lcom/twitter/model/geo/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 586
    if-eqz v1, :cond_0

    .line 587
    new-instance v2, Lcom/twitter/library/api/geo/a;

    iget-object v3, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->d:Lcom/twitter/library/client/Session;

    invoke-direct {v2, v1, v3}, Lcom/twitter/library/api/geo/a;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const-string/jumbo v3, "tweet_compose_location"

    .line 588
    invoke-virtual {v2, v3}, Lcom/twitter/library/api/geo/a;->a(Ljava/lang/String;)Lcom/twitter/library/api/geo/a;

    move-result-object v2

    .line 589
    invoke-static {v1}, Lcom/twitter/library/util/au;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/twitter/library/api/geo/a;->a(Ljava/util/List;)Lcom/twitter/library/api/geo/a;

    move-result-object v1

    .line 590
    invoke-direct {p0, v1, v0}, Lcom/twitter/android/widget/ComposerPoiFragment;->a(Lcom/twitter/library/api/geo/a;I)Z

    move-result v0

    .line 593
    :cond_0
    return v0
.end method

.method public k()Lcom/twitter/android/geo/PlacePickerModel;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 20

    .prologue
    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 251
    :cond_0
    :goto_0
    const-string/jumbo v2, "footer_text_tag"

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->m()Z

    .line 254
    :cond_1
    return-void

    .line 224
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->f:Lcom/twitter/android/widget/q;

    if-eqz v2, :cond_0

    .line 225
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->v:Z

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->f:Lcom/twitter/android/widget/q;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/twitter/android/widget/q;->b(Z)V

    goto :goto_0

    .line 231
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->b()Lcom/twitter/android/geo/GeoTagState;

    move-result-object v2

    .line 232
    invoke-virtual {v2}, Lcom/twitter/android/geo/GeoTagState;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    invoke-virtual {v2}, Lcom/twitter/android/geo/GeoTagState;->e()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v2

    .line 234
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "compose:poi:poi_list:location:deselect"

    iget-object v6, v2, Lcom/twitter/model/geo/TwitterPlace;->b:Ljava/lang/String;

    iget-object v7, v2, Lcom/twitter/model/geo/TwitterPlace;->c:Lcom/twitter/model/geo/TwitterPlace$PlaceType;

    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    .line 236
    invoke-virtual {v12, v2}, Lcom/twitter/android/geo/PlacePickerModel;->b(Lcom/twitter/model/geo/TwitterPlace;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    .line 237
    invoke-virtual {v15, v2}, Lcom/twitter/android/geo/PlacePickerModel;->a(Lcom/twitter/model/geo/TwitterPlace;)I

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->o()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const-wide/16 v18, -0x1

    move-object/from16 v2, p0

    .line 234
    invoke-direct/range {v2 .. v19}, Lcom/twitter/android/widget/ComposerPoiFragment;->a(ZZLjava/lang/String;Ljava/lang/String;Lcom/twitter/model/geo/TwitterPlace$PlaceType;DDLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)V

    .line 239
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ComposerPoiFragment;->b(Z)V

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->f:Lcom/twitter/android/widget/q;

    if-eqz v2, :cond_0

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->f:Lcom/twitter/android/widget/q;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/twitter/android/widget/q;->b(Z)V

    goto :goto_0

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f130600 -> :sswitch_0
        0x7f13060d -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ComposerLocationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-static {}, Lcom/twitter/library/scribe/TwitterScribeItem;->b()Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->D:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 121
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->D:Lcom/twitter/library/scribe/TwitterScribeItem;

    iget-object v0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->am:Lcom/twitter/library/scribe/ScribeGeoDetails;

    iput-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->E:Lcom/twitter/library/scribe/ScribeGeoDetails;

    .line 122
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->E:Lcom/twitter/library/scribe/ScribeGeoDetails;

    iput v1, v0, Lcom/twitter/library/scribe/ScribeGeoDetails;->a:I

    .line 123
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->E:Lcom/twitter/library/scribe/ScribeGeoDetails;

    iput v1, v0, Lcom/twitter/library/scribe/ScribeGeoDetails;->b:I

    .line 124
    new-instance v0, Lcom/twitter/android/widget/r;

    invoke-direct {v0, p0}, Lcom/twitter/android/widget/r;-><init>(Lcom/twitter/android/widget/ComposerPoiFragment;)V

    iput-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->F:Lcom/twitter/util/ui/e;

    .line 131
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    invoke-virtual {v0}, Lcom/twitter/android/geo/PlacePickerModel;->unregisterAll()V

    .line 890
    invoke-super {p0}, Lcom/twitter/android/widget/ComposerLocationFragment;->onDestroy()V

    .line 891
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->r:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->m()Z

    move-result v0

    .line 404
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v14, p3, v2

    .line 316
    if-ltz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->o:Lcom/twitter/android/widget/s;

    invoke-virtual {v2}, Lcom/twitter/android/widget/s;->getCount()I

    move-result v2

    if-lt v14, v2, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->o:Lcom/twitter/android/widget/s;

    invoke-virtual {v2, v14}, Lcom/twitter/android/widget/s;->a(I)Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v3

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->b()Lcom/twitter/android/geo/GeoTagState;

    move-result-object v2

    .line 322
    invoke-virtual {v2}, Lcom/twitter/android/geo/GeoTagState;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/twitter/android/geo/GeoTagState;->e()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/twitter/model/geo/TwitterPlace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->f:Lcom/twitter/android/widget/q;

    if-eqz v2, :cond_2

    .line 323
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->v:Z

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->f:Lcom/twitter/android/widget/q;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/twitter/android/widget/q;->b(Z)V

    goto :goto_0

    .line 328
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->o:Lcom/twitter/android/widget/s;

    .line 329
    invoke-virtual {v4}, Lcom/twitter/android/widget/s;->a()Lcom/twitter/android/geo/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/android/geo/i;->b()Lcom/twitter/android/geo/PlacePickerModel$PlaceListSource;

    move-result-object v4

    .line 328
    invoke-virtual {v2, v4}, Lcom/twitter/android/geo/PlacePickerModel;->a(Lcom/twitter/android/geo/PlacePickerModel$PlaceListSource;)Lcom/twitter/android/geo/f;

    move-result-object v5

    .line 330
    if-nez v5, :cond_4

    .line 331
    const-string/jumbo v2, "PlaceList cannot be null here"

    invoke-static {v2}, Lcom/twitter/util/h;->a(Ljava/lang/String;)V

    .line 339
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->f:Lcom/twitter/android/widget/q;

    if-eqz v2, :cond_3

    .line 340
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->v:Z

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->f:Lcom/twitter/android/widget/q;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/twitter/android/widget/q;->b(Z)V

    .line 343
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->A:Z

    .line 344
    const/16 v20, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "compose:poi:poi_list:location:select"

    iget-object v6, v3, Lcom/twitter/model/geo/TwitterPlace;->b:Ljava/lang/String;

    iget-object v7, v3, Lcom/twitter/model/geo/TwitterPlace;->c:Lcom/twitter/model/geo/TwitterPlace$PlaceType;

    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    .line 346
    invoke-virtual {v2, v3}, Lcom/twitter/android/geo/PlacePickerModel;->b(Lcom/twitter/model/geo/TwitterPlace;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->a:Lcom/twitter/android/geo/PlacePickerModel;

    .line 347
    invoke-virtual {v2, v3}, Lcom/twitter/android/geo/PlacePickerModel;->a(Lcom/twitter/model/geo/TwitterPlace;)I

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->o()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "geotag"

    .line 348
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v18

    move-object/from16 v2, p0

    move/from16 v3, v20

    .line 344
    invoke-direct/range {v2 .. v19}, Lcom/twitter/android/widget/ComposerPoiFragment;->a(ZZLjava/lang/String;Ljava/lang/String;Lcom/twitter/model/geo/TwitterPlace$PlaceType;DDLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 333
    :cond_4
    new-instance v2, Lcom/twitter/android/geo/GeoTagState;

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->r()Lcom/twitter/model/geo/d;

    move-result-object v4

    .line 335
    invoke-virtual {v5}, Lcom/twitter/android/geo/f;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/widget/ComposerPoiFragment;->q:Lcom/twitter/android/geo/k;

    .line 336
    invoke-virtual {v8}, Lcom/twitter/android/geo/k;->c()Z

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/twitter/android/geo/GeoTagState;-><init>(Lcom/twitter/model/geo/TwitterPlace;Lcom/twitter/model/geo/d;Ljava/lang/String;ZZZ)V

    .line 333
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ComposerPoiFragment;->a(Lcom/twitter/android/geo/GeoTagState;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 353
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ComposerLocationFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 354
    const-string/jumbo v0, "has_search_text_changed_since_last_search"

    iget-boolean v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->B:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 356
    const-string/jumbo v0, "place_picker_presenter_source"

    iget-object v1, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->o:Lcom/twitter/android/widget/s;

    .line 357
    invoke-virtual {v1}, Lcom/twitter/android/widget/s;->a()Lcom/twitter/android/geo/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/geo/i;->b()Lcom/twitter/android/geo/PlacePickerModel$PlaceListSource;

    move-result-object v1

    .line 356
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 358
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 288
    iget v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->u:I

    if-le v0, p2, :cond_1

    .line 289
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->q:Lcom/twitter/android/geo/k;

    invoke-virtual {v0}, Lcom/twitter/android/geo/k;->a()V

    .line 294
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    :goto_1
    return-void

    .line 290
    :cond_1
    iget v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->u:I

    if-ge v0, p2, :cond_0

    .line 291
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->q:Lcom/twitter/android/geo/k;

    invoke-virtual {v0}, Lcom/twitter/android/geo/k;->b()V

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->n:Landroid/widget/ListView;

    if-nez v0, :cond_3

    move v0, v1

    .line 298
    :goto_2
    sub-int v0, p2, v0

    if-lez v0, :cond_4

    .line 299
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/ComposerPoiFragment;->h(Z)V

    .line 304
    :goto_3
    iput p2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->u:I

    goto :goto_1

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_2

    .line 301
    :cond_4
    invoke-direct {p0, v1}, Lcom/twitter/android/widget/ComposerPoiFragment;->h(Z)V

    goto :goto_3
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 262
    iget-boolean v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->v:Z

    if-eqz v2, :cond_0

    .line 273
    :goto_0
    return v0

    .line 265
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 266
    const v3, 0x7f130603

    if-ne v2, v3, :cond_2

    .line 267
    iget-object v0, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->r:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 268
    invoke-virtual {p0}, Lcom/twitter/android/widget/ComposerPoiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/widget/ComposerPoiFragment;->r:Landroid/widget/EditText;

    invoke-static {v0, v2, v1}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    :cond_1
    move v0, v1

    .line 273
    goto :goto_0

    .line 269
    :cond_2
    const v3, 0x7f1305fe

    if-ne v2, v3, :cond_1

    goto :goto_0
.end method
