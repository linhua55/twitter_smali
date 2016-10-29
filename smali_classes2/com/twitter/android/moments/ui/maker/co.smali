.class public Lcom/twitter/android/moments/ui/maker/co;
.super Lcom/twitter/app/common/inject/v;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/navigation/ao;

.field private final b:Lcom/twitter/android/moments/ui/maker/dv;


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/ak;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/dv;)V
    .locals 3

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/twitter/app/common/inject/v;-><init>()V

    .line 68
    invoke-virtual {p0, p2}, Lcom/twitter/android/moments/ui/maker/co;->a(Landroid/view/View;)V

    .line 69
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/co;->b:Lcom/twitter/android/moments/ui/maker/dv;

    .line 70
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/co;->a:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    .line 71
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/co;->a:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    sget-object v1, Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;->a:Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;

    new-instance v2, Lcom/twitter/android/moments/ui/maker/navigation/d;

    invoke-direct {v2, p1}, Lcom/twitter/android/moments/ui/maker/navigation/d;-><init>(Lcom/twitter/model/moments/ak;)V

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/moments/ui/maker/navigation/ao;->a(Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;Lcom/twitter/android/moments/ui/maker/navigation/an;)V

    .line 72
    return-void
.end method

.method public static a(Lcom/twitter/app/common/inject/InjectedFragmentActivity;Lcom/twitter/android/moments/data/maker/a;JLcom/twitter/model/moments/ak;Laeo;Laer;)Lcom/twitter/android/moments/ui/maker/co;
    .locals 18

    .prologue
    .line 43
    new-instance v4, Lcom/twitter/android/moments/ui/maker/du;

    new-instance v5, Landroid/util/LruCache;

    const/16 v6, 0xc

    invoke-direct {v5, v6}, Landroid/util/LruCache;-><init>(I)V

    invoke-direct {v4, v5}, Lcom/twitter/android/moments/ui/maker/du;-><init>(Landroid/util/LruCache;)V

    .line 44
    new-instance v14, Lcom/twitter/android/moments/ui/maker/dv;

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/android/moments/data/maker/a;->b()Lrx/o;

    move-result-object v5

    invoke-direct {v14, v4, v5}, Lcom/twitter/android/moments/ui/maker/dv;-><init>(Lcom/twitter/android/moments/ui/maker/du;Lrx/o;)V

    .line 47
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1}, Lcom/twitter/android/moments/ui/maker/df;->a(Landroid/app/Activity;Lcom/twitter/android/moments/ui/maker/du;Laeo;)Lcom/twitter/android/moments/ui/maker/df;

    move-result-object v15

    .line 48
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0401c8

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/view/ViewGroup;

    .line 50
    new-instance v4, Lcom/twitter/android/moments/ui/maker/a;

    const/16 v8, 0x270f

    new-instance v11, Lcom/twitter/android/av/audio/n;

    invoke-direct {v11}, Lcom/twitter/android/av/audio/n;-><init>()V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v12}, Lcom/twitter/android/moments/ui/maker/a;-><init>(Landroid/app/Activity;JILcom/twitter/android/moments/data/maker/a;Laer;Lcom/twitter/android/av/audio/n;Landroid/content/res/Resources;)V

    .line 54
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/twitter/android/moments/ui/maker/dh;->a(Landroid/app/Activity;J)Lcom/twitter/android/moments/ui/maker/dh;

    move-result-object v10

    .line 55
    new-instance v11, Lcom/twitter/android/moments/ui/maker/bq;

    const/16 v5, 0x1b1

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v5}, Lcom/twitter/android/moments/ui/maker/bq;-><init>(Landroid/app/Activity;I)V

    .line 58
    new-instance v12, Lcom/twitter/android/moments/ui/maker/navigation/ah;

    new-instance v16, Lcom/twitter/android/moments/ui/maker/navigation/ag;

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/moments/ui/maker/navigation/ag;-><init>(JLcom/twitter/model/moments/ak;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v15

    move-object v8, v13

    move-object v9, v4

    .line 60
    invoke-static/range {v5 .. v11}, Lcom/twitter/android/moments/ui/maker/navigation/ak;->a(Lcom/twitter/app/common/base/BaseFragmentActivity;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/df;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/maker/a;Lcom/twitter/android/moments/ui/maker/dh;Laui;)Lcom/twitter/android/moments/ui/maker/navigation/ak;

    move-result-object v8

    new-instance v9, Lcom/twitter/android/moments/ui/maker/navigation/v;

    new-instance v4, Lcom/twitter/android/moments/ui/maker/navigation/am;

    invoke-direct {v4}, Lcom/twitter/android/moments/ui/maker/navigation/am;-><init>()V

    invoke-direct {v9, v4}, Lcom/twitter/android/moments/ui/maker/navigation/v;-><init>(Lcom/twitter/util/object/c;)V

    move-object v4, v12

    move-object/from16 v5, p0

    move-object v6, v13

    move-object/from16 v7, v16

    invoke-direct/range {v4 .. v9}, Lcom/twitter/android/moments/ui/maker/navigation/ah;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/maker/navigation/ag;Lcom/twitter/android/moments/ui/maker/navigation/ak;Lcom/twitter/android/moments/ui/maker/navigation/at;)V

    .line 63
    new-instance v4, Lcom/twitter/android/moments/ui/maker/co;

    move-object/from16 v0, p4

    invoke-direct {v4, v0, v13, v12, v14}, Lcom/twitter/android/moments/ui/maker/co;-><init>(Lcom/twitter/model/moments/ak;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/dv;)V

    return-object v4
.end method


# virtual methods
.method public as_()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/co;->b:Lcom/twitter/android/moments/ui/maker/dv;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/dv;->a()V

    .line 81
    invoke-super {p0}, Lcom/twitter/app/common/inject/v;->as_()V

    .line 82
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/co;->a:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ao;->a()V

    .line 76
    return-void
.end method
