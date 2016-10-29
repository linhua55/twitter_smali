.class public Lcom/twitter/android/widget/fp;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "Twttr"


# instance fields
.field final a:Landroid/widget/TextView;

.field final b:Landroid/view/ViewGroup;

.field final c:Lcom/twitter/android/widget/TweetDetailView;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/widget/fs;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/graphics/Paint;

.field private final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/twitter/android/widget/fs;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/twitter/model/core/bm;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/twitter/android/widget/TweetDetailView;)V
    .locals 2

    .prologue
    .line 1031
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1025
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/fp;->e:Landroid/graphics/Paint;

    .line 1032
    invoke-static {p2}, Lcom/twitter/android/widget/TweetDetailView;->h(Lcom/twitter/android/widget/TweetDetailView;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    .line 1033
    invoke-static {p2}, Lcom/twitter/android/widget/TweetDetailView;->i(Lcom/twitter/android/widget/TweetDetailView;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/fp;->b:Landroid/view/ViewGroup;

    .line 1034
    iput-object p2, p0, Lcom/twitter/android/widget/fp;->c:Lcom/twitter/android/widget/TweetDetailView;

    .line 1035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/fp;->d:Ljava/util/List;

    .line 1037
    iget-object v0, p0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/twitter/android/widget/fq;

    invoke-direct {v1, p0}, Lcom/twitter/android/widget/fq;-><init>(Lcom/twitter/android/widget/fp;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1045
    new-instance v0, Lcom/twitter/android/widget/fr;

    invoke-direct {v0, p0}, Lcom/twitter/android/widget/fr;-><init>(Lcom/twitter/android/widget/fp;)V

    iput-object v0, p0, Lcom/twitter/android/widget/fp;->f:Ljava/util/Comparator;

    .line 1051
    return-void
.end method

.method private a()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    .line 1075
    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/widget/fp;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/twitter/android/widget/fp;->c:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v1}, Lcom/twitter/android/widget/TweetDetailView;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 1076
    iget-object v1, p0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    .line 1077
    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/widget/fp;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/twitter/android/widget/fp;->c:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v2}, Lcom/twitter/android/widget/TweetDetailView;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 1078
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method private a(Ljava/lang/String;Ljava/lang/Iterable;Z)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/model/core/e;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 1165
    invoke-static/range {p2 .. p2}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/lang/Iterable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1218
    :cond_0
    return-void

    .line 1170
    :cond_1
    const/4 v6, 0x0

    .line 1171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/widget/fp;->g:Lcom/twitter/model/core/bm;

    invoke-virtual {v1}, Lcom/twitter/model/core/bm;->b()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 1176
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/cx;

    move-object v3, v1

    .line 1177
    :goto_0
    if-eqz v3, :cond_3

    iget v1, v3, Lcom/twitter/model/core/cx;->g:I

    .line 1178
    :goto_1
    const/4 v2, 0x0

    .line 1180
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v7, v6

    move/from16 v19, v1

    move v1, v2

    move/from16 v2, v19

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/twitter/model/core/e;

    .line 1181
    if-nez p3, :cond_6

    .line 1182
    :goto_3
    iget v6, v8, Lcom/twitter/model/core/e;->g:I

    if-le v6, v2, :cond_6

    if-eqz v3, :cond_6

    .line 1183
    iget v2, v3, Lcom/twitter/model/core/cx;->h:I

    iget v6, v3, Lcom/twitter/model/core/cx;->g:I

    sub-int/2addr v2, v6

    iget v6, v3, Lcom/twitter/model/core/cx;->H:I

    iget v3, v3, Lcom/twitter/model/core/cx;->G:I

    sub-int v3, v6, v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 1185
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/cx;

    move-object v3, v1

    .line 1186
    :goto_4
    if-eqz v3, :cond_5

    iget v1, v3, Lcom/twitter/model/core/cx;->g:I

    :goto_5
    move/from16 v19, v2

    move v2, v1

    move/from16 v1, v19

    goto :goto_3

    .line 1176
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1177
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 1185
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 1186
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_5

    :cond_6
    move v11, v1

    move v9, v2

    move-object v10, v3

    .line 1190
    iget v1, v8, Lcom/twitter/model/core/e;->g:I

    sub-int v6, v1, v11

    .line 1191
    if-eqz p3, :cond_7

    move-object v1, v8

    check-cast v1, Lcom/twitter/model/core/cx;

    iget-object v1, v1, Lcom/twitter/model/core/cx;->F:Ljava/lang/String;

    .line 1192
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v6

    move v15, v1

    .line 1195
    :goto_6
    if-ltz v6, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v15, v1, :cond_a

    move v12, v4

    move v13, v5

    move v14, v7

    .line 1196
    :goto_7
    if-lt v6, v12, :cond_8

    .line 1198
    add-int/lit8 v14, v14, 0x1

    .line 1199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    move v13, v12

    move v12, v4

    goto :goto_7

    .line 1192
    :cond_7
    iget v1, v8, Lcom/twitter/model/core/e;->h:I

    sub-int/2addr v1, v11

    move v15, v1

    goto :goto_6

    .line 1202
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/widget/fp;->e:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v13, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v4

    .line 1203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/widget/fp;->e:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v6, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v5

    .line 1204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    mul-int v3, v14, v1

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/widget/fp;->d:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v1, Lcom/twitter/android/widget/fs;

    float-to-int v2, v4

    add-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    .line 1208
    invoke-virtual {v5}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    add-int/2addr v5, v3

    .line 1209
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v8}, Lcom/twitter/android/widget/fs;-><init>(IIIIILjava/lang/String;Lcom/twitter/model/core/e;)V

    .line 1206
    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1212
    if-eqz p3, :cond_9

    .line 1213
    check-cast v8, Lcom/twitter/model/core/cx;

    .line 1214
    iget v1, v8, Lcom/twitter/model/core/cx;->h:I

    iget v2, v8, Lcom/twitter/model/core/cx;->g:I

    sub-int/2addr v1, v2

    iget v2, v8, Lcom/twitter/model/core/cx;->H:I

    iget v3, v8, Lcom/twitter/model/core/cx;->G:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/2addr v11, v1

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    :goto_8
    move v5, v3

    move v7, v4

    move v4, v2

    move-object v3, v10

    move v2, v9

    .line 1217
    goto/16 :goto_2

    :cond_9
    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    goto :goto_8

    :cond_a
    move v1, v11

    move v2, v4

    move v3, v5

    move v4, v7

    goto :goto_8
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/bm;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1145
    iget-object v0, p0, Lcom/twitter/android/widget/fp;->g:Lcom/twitter/model/core/bm;

    if-ne v0, p1, :cond_1

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    iput-object p1, p0, Lcom/twitter/android/widget/fp;->g:Lcom/twitter/model/core/bm;

    .line 1149
    iget-object v0, p0, Lcom/twitter/android/widget/fp;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1150
    iget-object v0, p0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/twitter/android/widget/fp;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1152
    iget-object v0, p0, Lcom/twitter/android/widget/fp;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1153
    iget-object v0, p0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1155
    iget-object v1, p1, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/widget/fp;->a(Ljava/lang/String;Ljava/lang/Iterable;Z)V

    .line 1156
    iget-object v1, p1, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/widget/fp;->a(Ljava/lang/String;Ljava/lang/Iterable;Z)V

    .line 1157
    invoke-virtual {p1}, Lcom/twitter/model/core/bm;->b()Ljava/lang/Iterable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/widget/fp;->a(Ljava/lang/String;Ljava/lang/Iterable;Z)V

    .line 1159
    iget-object v0, p0, Lcom/twitter/android/widget/fp;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/twitter/android/widget/fp;->f:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method protected getVirtualViewAt(FF)I
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1055
    invoke-direct {p0}, Lcom/twitter/android/widget/fp;->a()Landroid/graphics/Point;

    move-result-object v0

    .line 1056
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float v3, p1, v1

    .line 1057
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    sub-float v4, p2, v0

    .line 1058
    cmpl-float v0, v3, v5

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_1

    cmpl-float v0, v4, v5

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    .line 1059
    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    .line 1061
    :goto_0
    if-eqz v0, :cond_3

    move v1, v2

    .line 1062
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/widget/fp;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/twitter/android/widget/fp;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/fs;

    float-to-int v5, v3

    float-to-int v6, v4

    invoke-virtual {v0, v5, v6}, Lcom/twitter/android/widget/fs;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1064
    add-int/lit8 v2, v1, 0x1

    .line 1069
    :cond_0
    :goto_2
    return v2

    :cond_1
    move v0, v2

    .line 1059
    goto :goto_0

    .line 1062
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1069
    :cond_3
    const/high16 v2, -0x80000000

    goto :goto_2
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1083
    iget-object v1, p0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1084
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    :cond_0
    return-void

    .line 1087
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/widget/fp;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1089
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 1132
    packed-switch p2, :pswitch_data_0

    .line 1139
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1134
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/widget/fp;->d:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/fs;

    iget-object v0, v0, Lcom/twitter/android/widget/fs;->d:Lcom/twitter/model/core/e;

    .line 1135
    iget-object v1, p0, Lcom/twitter/android/widget/fp;->c:Lcom/twitter/android/widget/TweetDetailView;

    invoke-static {v1}, Lcom/twitter/android/widget/TweetDetailView;->b(Lcom/twitter/android/widget/TweetDetailView;)Lcom/twitter/library/view/m;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/twitter/library/view/o;->a(Lcom/twitter/library/view/m;Lcom/twitter/model/core/e;)V

    .line 1136
    const/4 v0, 0x1

    goto :goto_0

    .line 1132
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1095
    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1096
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1101
    const-string/jumbo v1, ""

    .line 1102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1103
    invoke-direct {p0}, Lcom/twitter/android/widget/fp;->a()Landroid/graphics/Point;

    move-result-object v3

    .line 1104
    if-nez p1, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1106
    if-eqz v0, :cond_3

    .line 1109
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v4, v3, Landroid/graphics/Point;->y:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/twitter/android/widget/fp;->a:Landroid/widget/TextView;

    .line 1110
    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v4, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 1121
    :goto_1
    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1122
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1123
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1127
    :goto_2
    return-void

    .line 1112
    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 1113
    if-ltz v2, :cond_1

    iget-object v4, p0, Lcom/twitter/android/widget/fp;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/twitter/android/widget/fp;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/fs;

    .line 1115
    iget-object v2, v0, Lcom/twitter/android/widget/fs;->c:Ljava/lang/String;

    .line 1116
    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/twitter/android/widget/fs;->b:Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v1

    move-object v1, v2

    .line 1118
    :cond_1
    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1119
    const/16 v2, 0x10

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_1

    .line 1125
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v7, v7, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
