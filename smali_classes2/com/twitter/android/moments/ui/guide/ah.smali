.class Lcom/twitter/android/moments/ui/guide/ah;
.super Lcvt;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcvt",
        "<",
        "Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/guide/s;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Lcom/twitter/android/av/t;

.field private final d:Laho;

.field private final e:Lcom/twitter/android/moments/data/q;

.field private final f:Lcom/twitter/android/moments/data/q;

.field private final g:Lcom/twitter/android/moments/data/ae;

.field private final h:Lcom/twitter/android/moments/data/bo;

.field private final i:Lcom/twitter/android/moments/ui/guide/f;

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/twitter/android/moments/ui/guide/h;

.field private final l:Lahn;

.field private final m:Lalp;

.field private final n:Lcom/twitter/app/common/inject/o;

.field private final o:Lcom/twitter/android/moments/ui/guide/q;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/android/moments/ui/guide/s;Landroid/view/LayoutInflater;Lahi;Lcom/twitter/android/av/t;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/ae;Lcom/twitter/android/moments/data/bo;Lcom/twitter/android/moments/ui/guide/f;Ljava/util/Set;Lcom/twitter/android/moments/ui/guide/h;Lalp;Lcom/twitter/app/common/inject/o;Lcom/twitter/android/moments/ui/guide/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/android/moments/ui/guide/s;",
            "Landroid/view/LayoutInflater;",
            "Lahi;",
            "Lcom/twitter/android/av/t;",
            "Lcom/twitter/android/moments/data/q;",
            "Lcom/twitter/android/moments/data/q;",
            "Lcom/twitter/android/moments/data/ae;",
            "Lcom/twitter/android/moments/data/bo;",
            "Lcom/twitter/android/moments/ui/guide/f;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/twitter/android/moments/ui/guide/h;",
            "Lalp;",
            "Lcom/twitter/app/common/inject/o;",
            "Lcom/twitter/android/moments/ui/guide/q;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcvt;-><init>(Landroid/content/Context;)V

    .line 82
    iput-object p2, p0, Lcom/twitter/android/moments/ui/guide/ah;->a:Lcom/twitter/android/moments/ui/guide/s;

    .line 83
    iput-object p3, p0, Lcom/twitter/android/moments/ui/guide/ah;->b:Landroid/view/LayoutInflater;

    .line 84
    invoke-virtual {p4}, Lahi;->b()Laho;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/moments/ui/guide/ah;->d:Laho;

    .line 85
    invoke-virtual {p4}, Lahi;->c()Lahn;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/moments/ui/guide/ah;->l:Lahn;

    .line 86
    iput-object p5, p0, Lcom/twitter/android/moments/ui/guide/ah;->c:Lcom/twitter/android/av/t;

    .line 87
    iput-object p6, p0, Lcom/twitter/android/moments/ui/guide/ah;->e:Lcom/twitter/android/moments/data/q;

    .line 88
    iput-object p7, p0, Lcom/twitter/android/moments/ui/guide/ah;->f:Lcom/twitter/android/moments/data/q;

    .line 89
    iput-object p8, p0, Lcom/twitter/android/moments/ui/guide/ah;->g:Lcom/twitter/android/moments/data/ae;

    .line 90
    iput-object p9, p0, Lcom/twitter/android/moments/ui/guide/ah;->h:Lcom/twitter/android/moments/data/bo;

    .line 91
    iput-object p10, p0, Lcom/twitter/android/moments/ui/guide/ah;->i:Lcom/twitter/android/moments/ui/guide/f;

    .line 92
    iput-object p11, p0, Lcom/twitter/android/moments/ui/guide/ah;->j:Ljava/util/Set;

    .line 93
    iput-object p12, p0, Lcom/twitter/android/moments/ui/guide/ah;->k:Lcom/twitter/android/moments/ui/guide/h;

    .line 94
    iput-object p13, p0, Lcom/twitter/android/moments/ui/guide/ah;->m:Lalp;

    .line 95
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/ah;->n:Lcom/twitter/app/common/inject/o;

    .line 96
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/ah;->o:Lcom/twitter/android/moments/ui/guide/q;

    .line 98
    invoke-static {}, Lcmf;->f()Lcmf;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/moments/ui/guide/ah;->a(Lcmf;)Lcmf;

    .line 99
    return-void
.end method

.method private a(Lcom/twitter/android/moments/viewmodels/MomentGuideListItem$Type;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    sget-object v0, Lcom/twitter/android/moments/viewmodels/MomentGuideListItem$Type;->a:Lcom/twitter/android/moments/viewmodels/MomentGuideListItem$Type;

    if-ne p1, v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ah;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0401ed

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 215
    :cond_0
    sget-object v0, Lcom/twitter/android/moments/viewmodels/MomentGuideListItem$Type;->b:Lcom/twitter/android/moments/viewmodels/MomentGuideListItem$Type;

    if-ne p1, v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ah;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0401ee

    .line 217
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 219
    const v1, 0x7f1304d7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 220
    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/ah;->m:Lalp;

    invoke-interface {v2, v1}, Lalp;->b(Landroid/support/v7/widget/RecyclerView;)Lals;

    move-result-object v1

    .line 222
    invoke-interface {v1}, Lals;->a()V

    goto :goto_0

    .line 225
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " provided to inflateHeroView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/h;->a(Ljava/lang/String;)V

    .line 226
    new-instance v0, Landroid/widget/Space;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/guide/ah;)Lcom/twitter/android/moments/ui/guide/q;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ah;->o:Lcom/twitter/android/moments/ui/guide/q;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;)I
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;->b()Lcom/twitter/android/moments/viewmodels/MomentGuideListItem$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/viewmodels/MomentGuideListItem$Type;->ordinal()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 48
    check-cast p1, Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/guide/ah;->a(Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;)I

    move-result v0

    return v0
.end method

.method protected a(Landroid/content/Context;Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22

    .prologue
    .line 115
    const/16 v20, 0x0

    .line 116
    sget-object v2, Lcom/twitter/android/moments/ui/guide/ak;->a:[I

    invoke-virtual/range {p2 .. p2}, Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;->b()Lcom/twitter/android/moments/viewmodels/MomentGuideListItem$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/moments/viewmodels/MomentGuideListItem$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 208
    :goto_0
    return-object v20

    .line 118
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/guide/ah;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f0401f0

    const/4 v4, 0x0

    .line 119
    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    goto :goto_0

    .line 124
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/guide/ah;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f0401f6

    const/4 v4, 0x0

    .line 125
    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    goto :goto_0

    .line 130
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/guide/ah;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f04036b

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    goto :goto_0

    .line 135
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/guide/ah;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f0401ef

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 136
    new-instance v2, Lcom/twitter/android/moments/ui/guide/ai;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/twitter/android/moments/ui/guide/ai;-><init>(Lcom/twitter/android/moments/ui/guide/ah;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 145
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/guide/ah;->b:Landroid/view/LayoutInflater;

    .line 146
    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lamb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lamb;

    move-result-object v11

    .line 147
    invoke-virtual {v11}, Lamb;->aK_()Landroid/view/View;

    move-result-object v20

    .line 148
    new-instance v2, Laio;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Laio;-><init>(Landroid/view/View;)V

    .line 149
    new-instance v4, Lcom/twitter/android/moments/data/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/moments/ui/guide/ah;->g:Lcom/twitter/android/moments/data/ae;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/moments/ui/guide/ah;->d:Laho;

    invoke-direct {v4, v2, v3, v5}, Lcom/twitter/android/moments/data/h;-><init>(Laio;Lcom/twitter/android/moments/data/ae;Lahp;)V

    .line 152
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1304bc

    const v5, 0x7f1304bd

    .line 151
    move-object/from16 v0, v20

    invoke-static {v2, v0, v3, v5}, Laiv;->a(Landroid/content/res/Resources;Landroid/view/View;II)Laip;

    move-result-object v2

    .line 153
    new-instance v5, Lcom/twitter/android/moments/data/bg;

    new-instance v3, Laiu;

    invoke-direct {v3, v2}, Laiu;-><init>(Laip;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/guide/ah;->h:Lcom/twitter/android/moments/data/bo;

    invoke-direct {v5, v3, v2}, Lcom/twitter/android/moments/data/bg;-><init>(Laiu;Lcom/twitter/android/moments/data/bo;)V

    .line 155
    new-instance v2, Lcom/twitter/android/moments/data/ar;

    const v3, 0x7f1304d8

    .line 156
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/twitter/android/moments/data/ar;-><init>(Landroid/view/View;)V

    .line 157
    new-instance v6, Lcom/twitter/android/moments/data/ap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/moments/ui/guide/ah;->o:Lcom/twitter/android/moments/ui/guide/q;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/guide/ah;->d:Laho;

    invoke-direct {v6, v2, v3, v7}, Lcom/twitter/android/moments/data/ap;-><init>(Lcom/twitter/android/moments/data/ar;Lcom/twitter/android/moments/ui/guide/q;Lahl;)V

    .line 160
    new-instance v2, Lcom/twitter/android/moments/ui/guide/aw;

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/moments/ui/guide/ah;->a:Lcom/twitter/android/moments/ui/guide/s;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/moments/ui/guide/ah;->e:Lcom/twitter/android/moments/data/q;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/moments/ui/guide/ah;->f:Lcom/twitter/android/moments/data/q;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/moments/ui/guide/ah;->i:Lcom/twitter/android/moments/ui/guide/f;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/moments/ui/guide/ah;->d:Laho;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/moments/ui/guide/ah;->o:Lcom/twitter/android/moments/ui/guide/q;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/moments/ui/guide/ah;->j:Ljava/util/Set;

    invoke-direct/range {v2 .. v14}, Lcom/twitter/android/moments/ui/guide/aw;-><init>(Landroid/content/res/Resources;Lcom/twitter/android/moments/data/h;Lcom/twitter/android/moments/data/bg;Lcom/twitter/android/moments/data/ap;Lcom/twitter/android/moments/ui/guide/s;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/ui/guide/f;Lamb;Laho;Lcom/twitter/android/moments/ui/guide/q;Ljava/util/Set;)V

    .line 165
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 170
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;->b()Lcom/twitter/android/moments/viewmodels/MomentGuideListItem$Type;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/twitter/android/moments/ui/guide/ah;->a(Lcom/twitter/android/moments/viewmodels/MomentGuideListItem$Type;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 171
    new-instance v21, Lcom/twitter/android/moments/ui/fullscreen/dm;

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/ah;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/twitter/library/av/playback/ao;->a()Lcom/twitter/library/av/playback/ao;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/dm;-><init>(Landroid/content/Context;Lcom/twitter/library/av/playback/ao;)V

    .line 174
    invoke-static/range {v20 .. v20}, Lamc;->b(Landroid/view/View;)Lamc;

    move-result-object v4

    .line 175
    new-instance v2, Lcom/twitter/android/moments/ui/guide/x;

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/ah;->j()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/moments/ui/guide/ah;->a:Lcom/twitter/android/moments/ui/guide/s;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/guide/ah;->b:Landroid/view/LayoutInflater;

    move-object/from16 v7, v20

    check-cast v7, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/moments/ui/guide/ah;->k:Lcom/twitter/android/moments/ui/guide/h;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/moments/ui/guide/ah;->e:Lcom/twitter/android/moments/data/q;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/moments/ui/guide/ah;->f:Lcom/twitter/android/moments/data/q;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/twitter/android/moments/ui/guide/ah;->g:Lcom/twitter/android/moments/data/ae;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/moments/ui/guide/ah;->l:Lahn;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/moments/ui/guide/ah;->h:Lcom/twitter/android/moments/data/bo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/moments/ui/guide/ah;->o:Lcom/twitter/android/moments/ui/guide/q;

    invoke-direct/range {v2 .. v14}, Lcom/twitter/android/moments/ui/guide/x;-><init>(Landroid/content/Context;Lamc;Lcom/twitter/android/moments/ui/guide/s;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/guide/h;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/ae;Lahn;Lcom/twitter/android/moments/data/bo;Lcom/twitter/android/moments/ui/guide/q;)V

    .line 180
    new-instance v5, Lcom/twitter/android/moments/ui/guide/ba;

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/ah;->j()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/moments/ui/guide/ah;->a:Lcom/twitter/android/moments/ui/guide/s;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/moments/ui/guide/ah;->b:Landroid/view/LayoutInflater;

    move-object/from16 v10, v20

    check-cast v10, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/moments/ui/guide/ah;->k:Lcom/twitter/android/moments/ui/guide/h;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/moments/ui/guide/ah;->e:Lcom/twitter/android/moments/data/q;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/moments/ui/guide/ah;->f:Lcom/twitter/android/moments/data/q;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/twitter/android/moments/ui/guide/ah;->g:Lcom/twitter/android/moments/data/ae;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/guide/ah;->l:Lahn;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/guide/ah;->h:Lcom/twitter/android/moments/data/bo;

    move-object/from16 v17, v0

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/ah;->j()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/twitter/app/common/util/t;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/guide/ah;->o:Lcom/twitter/android/moments/ui/guide/q;

    move-object/from16 v19, v0

    move-object v7, v4

    move-object/from16 v11, v21

    invoke-direct/range {v5 .. v19}, Lcom/twitter/android/moments/ui/guide/ba;-><init>(Landroid/content/Context;Lamc;Lcom/twitter/android/moments/ui/guide/s;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/fullscreen/dm;Lcom/twitter/android/moments/ui/guide/h;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/ae;Lahn;Lcom/twitter/android/moments/data/bo;Lcom/twitter/app/common/util/t;Lcom/twitter/android/moments/ui/guide/q;)V

    .line 186
    new-instance v6, Lcom/twitter/android/moments/ui/guide/u;

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/moments/ui/guide/ah;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v8, v20

    check-cast v8, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/twitter/android/moments/ui/guide/ah;->l:Lahn;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/moments/ui/guide/ah;->c:Lcom/twitter/android/av/t;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/moments/ui/guide/ah;->i:Lcom/twitter/android/moments/ui/guide/f;

    move-object v9, v5

    move-object v10, v2

    invoke-direct/range {v6 .. v13}, Lcom/twitter/android/moments/ui/guide/u;-><init>(Landroid/content/res/Resources;Lcom/twitter/media/ui/image/AspectRatioFrameLayout;Lcom/twitter/android/moments/ui/guide/ba;Lcom/twitter/android/moments/ui/guide/x;Lahn;Lcom/twitter/android/av/t;Lcom/twitter/android/moments/ui/guide/f;)V

    .line 189
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/guide/ah;->n:Lcom/twitter/app/common/inject/o;

    invoke-virtual {v2, v6}, Lcom/twitter/app/common/inject/o;->a(Ljava/lang/Object;)Lcom/twitter/app/common/inject/o;

    goto/16 :goto_0

    .line 194
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/guide/ah;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f0401ea

    const/4 v4, 0x0

    .line 195
    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 196
    const v2, 0x7f1304d7

    .line 197
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/moments/ui/guide/ah;->m:Lalp;

    invoke-interface {v3, v2}, Lalp;->a(Landroid/support/v7/widget/RecyclerView;)Lals;

    move-result-object v2

    .line 200
    invoke-interface {v2}, Lals;->a()V

    goto/16 :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    check-cast p2, Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/moments/ui/guide/ah;->a(Landroid/content/Context;Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;)V
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lcom/twitter/android/moments/ui/guide/ak;->a:[I

    invoke-virtual {p3}, Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;->b()Lcom/twitter/android/moments/viewmodels/MomentGuideListItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/moments/viewmodels/MomentGuideListItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 268
    :goto_0
    :pswitch_0
    return-void

    .line 233
    :pswitch_1
    const v0, 0x7f1304af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 234
    check-cast p3, Lcom/twitter/android/moments/viewmodels/z;

    invoke-virtual {p3}, Lcom/twitter/android/moments/viewmodels/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 238
    :pswitch_2
    const v0, 0x7f1304df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, p3

    .line 239
    check-cast v1, Lcom/twitter/android/moments/viewmodels/af;

    invoke-virtual {v1}, Lcom/twitter/android/moments/viewmodels/af;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    new-instance v0, Lcom/twitter/android/moments/ui/guide/aj;

    invoke-direct {v0, p0, p3}, Lcom/twitter/android/moments/ui/guide/aj;-><init>(Lcom/twitter/android/moments/ui/guide/ah;Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 249
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/guide/aw;

    .line 250
    check-cast p3, Lcom/twitter/android/moments/viewmodels/ac;

    iget-object v1, p3, Lcom/twitter/android/moments/viewmodels/ac;->a:Lcom/twitter/android/moments/viewmodels/MomentModule;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/guide/aw;->a(Lcom/twitter/android/moments/viewmodels/MomentModule;)V

    .line 251
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/ah;->a:Lcom/twitter/android/moments/ui/guide/s;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/aw;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/guide/s;->b(Landroid/view/View;)V

    goto :goto_0

    .line 255
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/guide/u;

    .line 256
    check-cast p3, Lcom/twitter/android/moments/viewmodels/aa;

    iget-object v1, p3, Lcom/twitter/android/moments/viewmodels/aa;->a:Lcom/twitter/android/moments/viewmodels/MomentModule;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/guide/u;->a(Lcom/twitter/android/moments/viewmodels/MomentModule;)V

    goto :goto_0

    .line 260
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/guide/u;

    .line 261
    check-cast p3, Lcom/twitter/android/moments/viewmodels/ab;

    iget-object v1, p3, Lcom/twitter/android/moments/viewmodels/ab;->a:Lcom/twitter/android/moments/viewmodels/MomentModule;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/guide/u;->a(Lcom/twitter/android/moments/viewmodels/MomentModule;)V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p3, Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/moments/ui/guide/ah;->a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;)V

    return-void
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 108
    sget v0, Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;->b:I

    return v0
.end method
