.class Lcom/twitter/android/settings/o;
.super Landroid/os/AsyncTask;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/settings/MobileNotificationsActivity;

.field private final b:J

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method constructor <init>(Lcom/twitter/android/settings/MobileNotificationsActivity;J)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 699
    iput-wide p2, p0, Lcom/twitter/android/settings/o;->b:J

    .line 700
    return-void
.end method

.method private a(Landroid/preference/Preference;)I
    .locals 1

    .prologue
    .line 805
    if-eqz p1, :cond_0

    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILjava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1004
    packed-switch p1, :pswitch_data_0

    .line 1019
    :goto_0
    return-void

    .line 1006
    :pswitch_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v1, v1, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "settings"

    aput-object v2, v1, v4

    const-string/jumbo v2, "notifications"

    aput-object v2, v1, v5

    aput-object p2, v1, v6

    const/4 v2, 0x0

    aput-object v2, v1, v7

    const-string/jumbo v2, "deselect"

    aput-object v2, v1, v8

    .line 1007
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1006
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 1011
    :pswitch_1
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v1, v1, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "settings"

    aput-object v2, v1, v4

    const-string/jumbo v2, "notifications"

    aput-object v2, v1, v5

    aput-object p2, v1, v6

    const/4 v2, 0x0

    aput-object v2, v1, v7

    const-string/jumbo v2, "select"

    aput-object v2, v1, v8

    .line 1012
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1011
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 1004
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/preference/Preference;)I
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->f:Z

    if-eqz v0, :cond_0

    .line 811
    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 813
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/android/settings/o;->a(Landroid/preference/Preference;)I

    move-result v0

    goto :goto_0
.end method

.method private b(ILjava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1034
    packed-switch p1, :pswitch_data_0

    .line 1054
    :goto_0
    return-void

    .line 1036
    :pswitch_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v1, v1, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "settings"

    aput-object v2, v1, v4

    const-string/jumbo v2, "notifications"

    aput-object v2, v1, v5

    aput-object p2, v1, v6

    const/4 v2, 0x0

    aput-object v2, v1, v7

    const-string/jumbo v2, "deselect"

    aput-object v2, v1, v8

    .line 1037
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1036
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 1041
    :pswitch_1
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v1, v1, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "settings"

    aput-object v2, v1, v4

    const-string/jumbo v2, "notifications"

    aput-object v2, v1, v5

    aput-object p2, v1, v6

    const-string/jumbo v2, "from_people_you_follow"

    aput-object v2, v1, v7

    const-string/jumbo v2, "select"

    aput-object v2, v1, v8

    .line 1042
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1041
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 1046
    :pswitch_2
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v1, v1, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "settings"

    aput-object v2, v1, v4

    const-string/jumbo v2, "notifications"

    aput-object v2, v1, v5

    aput-object p2, v1, v6

    const-string/jumbo v2, "from_anyone"

    aput-object v2, v1, v7

    const-string/jumbo v2, "select"

    aput-object v2, v1, v8

    .line 1047
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1046
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 1034
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 32

    .prologue
    .line 823
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/twitter/android/settings/o;->c:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/twitter/android/settings/o;->d:Z

    if-nez v4, :cond_0

    .line 824
    const/4 v4, 0x0

    .line 980
    :goto_0
    return-object v4

    .line 826
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    move-object/from16 v28, v0

    .line 829
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-boolean v0, v4, Lcom/twitter/android/settings/MobileNotificationsActivity;->f:Z

    move/from16 v25, v0

    .line 830
    move-object/from16 v0, p0

    iget v4, v0, Lcom/twitter/android/settings/o;->e:I

    .line 831
    move-object/from16 v0, p0

    iget v9, v0, Lcom/twitter/android/settings/o;->k:I

    .line 832
    move-object/from16 v0, p0

    iget v5, v0, Lcom/twitter/android/settings/o;->f:I

    .line 833
    move-object/from16 v0, p0

    iget v6, v0, Lcom/twitter/android/settings/o;->g:I

    .line 834
    move-object/from16 v0, p0

    iget v7, v0, Lcom/twitter/android/settings/o;->h:I

    .line 835
    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/settings/o;->i:I

    move/from16 v23, v0

    .line 836
    move-object/from16 v0, p0

    iget v8, v0, Lcom/twitter/android/settings/o;->j:I

    .line 837
    move-object/from16 v0, p0

    iget v10, v0, Lcom/twitter/android/settings/o;->l:I

    .line 838
    move-object/from16 v0, p0

    iget v11, v0, Lcom/twitter/android/settings/o;->m:I

    .line 839
    move-object/from16 v0, p0

    iget v12, v0, Lcom/twitter/android/settings/o;->n:I

    .line 840
    move-object/from16 v0, p0

    iget v13, v0, Lcom/twitter/android/settings/o;->o:I

    .line 841
    move-object/from16 v0, p0

    iget v14, v0, Lcom/twitter/android/settings/o;->p:I

    .line 842
    move-object/from16 v0, p0

    iget v15, v0, Lcom/twitter/android/settings/o;->q:I

    .line 843
    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/settings/o;->s:I

    move/from16 v16, v0

    .line 844
    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/settings/o;->t:I

    move/from16 v17, v0

    .line 845
    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/settings/o;->r:I

    move/from16 v18, v0

    .line 846
    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/settings/o;->u:I

    move/from16 v19, v0

    .line 847
    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/settings/o;->v:I

    move/from16 v20, v0

    .line 848
    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/settings/o;->w:I

    move/from16 v21, v0

    .line 851
    const/16 v27, 0x0

    .line 852
    const/16 v24, 0x0

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lblh;->a(Landroid/content/Context;J)Z

    move-result v22

    .line 854
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/android/settings/o;->c:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    .line 857
    if-nez v25, :cond_15

    .line 858
    const/16 v24, 0x1

    .line 879
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/android/settings/o;->d:Z

    move/from16 v26, v0

    if-nez v26, :cond_2

    if-eqz v24, :cond_3

    .line 880
    :cond_2
    new-instance v24, Lcom/twitter/library/provider/cc;

    invoke-direct/range {v24 .. v24}, Lcom/twitter/library/provider/cc;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->g:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 881
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/cc;->a(Ljava/lang/String;)Lcom/twitter/library/provider/cc;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/android/settings/o;->y:Z

    move/from16 v26, v0

    .line 882
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/cc;->a(Z)Lcom/twitter/library/provider/cc;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/android/settings/o;->z:Z

    move/from16 v26, v0

    .line 883
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/cc;->b(Z)Lcom/twitter/library/provider/cc;

    move-result-object v24

    .line 884
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/twitter/library/provider/cc;->l(I)Lcom/twitter/library/provider/cc;

    move-result-object v24

    .line 885
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Lcom/twitter/library/provider/cc;->m(I)Lcom/twitter/library/provider/cc;

    move-result-object v24

    .line 886
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/twitter/library/provider/cc;->c(I)Lcom/twitter/library/provider/cc;

    move-result-object v24

    .line 887
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/twitter/library/provider/cc;->d(I)Lcom/twitter/library/provider/cc;

    move-result-object v24

    .line 888
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/twitter/library/provider/cc;->e(I)Lcom/twitter/library/provider/cc;

    move-result-object v24

    .line 889
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/cc;->f(I)Lcom/twitter/library/provider/cc;

    move-result-object v23

    .line 890
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/twitter/library/provider/cc;->g(I)Lcom/twitter/library/provider/cc;

    move-result-object v23

    .line 891
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/twitter/library/provider/cc;->h(I)Lcom/twitter/library/provider/cc;

    move-result-object v23

    .line 892
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/twitter/library/provider/cc;->n(I)Lcom/twitter/library/provider/cc;

    move-result-object v23

    .line 893
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/twitter/library/provider/cc;->o(I)Lcom/twitter/library/provider/cc;

    move-result-object v23

    .line 894
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/twitter/library/provider/cc;->p(I)Lcom/twitter/library/provider/cc;

    move-result-object v23

    .line 895
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/twitter/library/provider/cc;->q(I)Lcom/twitter/library/provider/cc;

    move-result-object v23

    .line 896
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/twitter/library/provider/cc;->r(I)Lcom/twitter/library/provider/cc;

    move-result-object v23

    .line 897
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/cc;->i(I)Lcom/twitter/library/provider/cc;

    move-result-object v16

    .line 898
    invoke-virtual/range {v16 .. v17}, Lcom/twitter/library/provider/cc;->j(I)Lcom/twitter/library/provider/cc;

    move-result-object v16

    .line 899
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/cc;->k(I)Lcom/twitter/library/provider/cc;

    move-result-object v16

    .line 900
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/cc;->s(I)Lcom/twitter/library/provider/cc;

    move-result-object v16

    .line 901
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/cc;->t(I)Lcom/twitter/library/provider/cc;

    move-result-object v16

    .line 902
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/cc;->u(I)Lcom/twitter/library/provider/cc;

    move-result-object v16

    .line 903
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/cc;->c(Z)Lcom/twitter/library/provider/cc;

    move-result-object v16

    .line 904
    invoke-virtual/range {v16 .. v16}, Lcom/twitter/library/provider/cc;->a()Lcom/twitter/library/provider/ca;

    move-result-object v24

    .line 905
    new-instance v26, Lcom/twitter/library/provider/b;

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/twitter/library/provider/b;-><init>(Landroid/content/ContentResolver;)V

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/settings/o;->b:J

    move-wide/from16 v22, v0

    .line 907
    invoke-virtual/range {v21 .. v26}, Lcom/twitter/library/provider/ar;->a(JLcom/twitter/library/provider/ca;ZLcom/twitter/library/provider/b;)I

    .line 908
    invoke-virtual/range {v26 .. v26}, Lcom/twitter/library/provider/b;->a()V

    .line 911
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/twitter/library/provider/ca;->d:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v5, :cond_4

    .line 912
    const-string/jumbo v16, "mention"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lcom/twitter/android/settings/o;->b(ILjava/lang/String;)V

    .line 914
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v5, v5, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v5, v5, Lcom/twitter/library/provider/ca;->n:I

    if-eq v5, v9, :cond_5

    .line 915
    const-string/jumbo v5, "message"

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v5}, Lcom/twitter/android/settings/o;->a(ILjava/lang/String;)V

    .line 917
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v5, v5, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v5, v5, Lcom/twitter/library/provider/ca;->m:I

    if-eq v5, v4, :cond_6

    .line 918
    const-string/jumbo v5, "tweet"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/twitter/android/settings/o;->a(ILjava/lang/String;)V

    .line 920
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v4, v4, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v4, v4, Lcom/twitter/library/provider/ca;->e:I

    if-eq v4, v6, :cond_7

    .line 921
    const-string/jumbo v4, "retweet"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/twitter/android/settings/o;->b(ILjava/lang/String;)V

    .line 923
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v4, v4, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v4, v4, Lcom/twitter/library/provider/ca;->f:I

    if-eq v4, v7, :cond_8

    .line 924
    const-string/jumbo v4, "favorite"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/twitter/android/settings/o;->b(ILjava/lang/String;)V

    .line 926
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v4, v4, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v4, v4, Lcom/twitter/library/provider/ca;->h:I

    if-eq v4, v8, :cond_9

    .line 927
    const-string/jumbo v4, "follow"

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/twitter/android/settings/o;->a(ILjava/lang/String;)V

    .line 929
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v4, v4, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v4, v4, Lcom/twitter/library/provider/ca;->i:I

    if-eq v4, v10, :cond_a

    .line 930
    const-string/jumbo v4, "address_book"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/twitter/android/settings/o;->a(ILjava/lang/String;)V

    .line 932
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v4, v4, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v4, v4, Lcom/twitter/library/provider/ca;->o:I

    if-eq v4, v11, :cond_b

    .line 933
    const-string/jumbo v4, "experimental"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/twitter/android/settings/o;->a(ILjava/lang/String;)V

    .line 935
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v4, v4, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v4, v4, Lcom/twitter/library/provider/ca;->p:I

    if-eq v4, v12, :cond_c

    .line 936
    const-string/jumbo v4, "lifeline_alert"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lcom/twitter/android/settings/o;->a(ILjava/lang/String;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    const/4 v4, 0x1

    if-ne v12, v4, :cond_18

    const/4 v4, 0x1

    :goto_2
    invoke-static {v5, v4}, Lcom/twitter/android/settings/MobileNotificationsActivity;->d(Lcom/twitter/android/settings/MobileNotificationsActivity;Z)V

    .line 939
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v4, v4, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v4, v4, Lcom/twitter/library/provider/ca;->q:I

    if-eq v4, v13, :cond_d

    .line 940
    const-string/jumbo v4, "recommendation"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/twitter/android/settings/o;->b(ILjava/lang/String;)V

    .line 942
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v4, v4, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v4, v4, Lcom/twitter/library/provider/ca;->r:I

    if-eq v4, v14, :cond_e

    .line 943
    const-string/jumbo v4, "news"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/twitter/android/settings/o;->a(ILjava/lang/String;)V

    .line 945
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v4, v4, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v4, v4, Lcom/twitter/library/provider/ca;->s:I

    if-eq v4, v15, :cond_f

    .line 946
    const-string/jumbo v4, "vit_notable_event"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/twitter/android/settings/o;->a(ILjava/lang/String;)V

    .line 948
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v4, v4, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v4, v4, Lcom/twitter/library/provider/ca;->l:I

    move/from16 v0, v18

    if-eq v4, v0, :cond_10

    .line 949
    const-string/jumbo v4, "followed_verified"

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v4}, Lcom/twitter/android/settings/o;->a(ILjava/lang/String;)V

    .line 951
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v4, v4, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v4, v4, Lcom/twitter/library/provider/ca;->t:I

    move/from16 v0, v19

    if-eq v4, v0, :cond_11

    .line 952
    const-string/jumbo v4, "offer_redemption"

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/twitter/android/settings/o;->a(ILjava/lang/String;)V

    .line 954
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v4, v4, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v4, v4, Lcom/twitter/library/provider/ca;->u:I

    move/from16 v0, v20

    if-eq v4, v0, :cond_1c

    .line 955
    const-string/jumbo v4, "highlights"

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/twitter/android/settings/o;->a(ILjava/lang/String;)V

    .line 956
    const/4 v4, 0x1

    .line 958
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-boolean v5, v5, Lcom/twitter/android/settings/MobileNotificationsActivity;->o:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/twitter/android/settings/o;->x:Z

    if-eq v5, v6, :cond_13

    .line 959
    const/4 v5, 0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_12

    .line 960
    const/4 v4, 0x1

    .line 962
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/twitter/android/settings/o;->x:Z

    if-eqz v5, :cond_19

    .line 963
    new-instance v5, Lcom/twitter/library/scribe/TwitterScribeLog;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v6, v6, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    invoke-virtual {v6}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "settings"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "notifications"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "enable_notifications"

    aput-object v8, v6, v7

    .line 964
    invoke-virtual {v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v5

    .line 963
    invoke-static {v5}, Lbjf;->a(Lbjh;)V

    .line 970
    :cond_13
    :goto_4
    if-eqz v4, :cond_14

    .line 971
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/twitter/android/settings/o;->x:Z

    if-eqz v4, :cond_1a

    const/4 v4, 0x1

    .line 976
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "settings:notifications:highlights::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v4, :cond_1b

    const-string/jumbo v4, "opt_in"

    :goto_6
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 978
    new-instance v5, Lcom/twitter/library/scribe/TwitterScribeLog;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v6, v6, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    invoke-virtual {v6}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v4

    invoke-static {v4}, Lbjf;->a(Lbjh;)V

    .line 980
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 859
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/android/settings/o;->x:Z

    move/from16 v26, v0

    if-nez v26, :cond_16

    if-nez v22, :cond_16

    .line 861
    const/16 v26, 0x1

    .line 862
    new-instance v24, Lblu;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lblu;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/16 v29, 0x3

    .line 864
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lblu;->d(I)Lcom/twitter/library/service/o;

    move-result-object v24

    check-cast v24, Lblu;

    .line 865
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lblu;->c:Z

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/twitter/android/settings/MobileNotificationsActivity;->c(Lcom/twitter/android/settings/MobileNotificationsActivity;)Lcom/twitter/library/client/bd;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    move/from16 v24, v26

    .line 867
    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/android/settings/o;->x:Z

    move/from16 v26, v0

    if-nez v26, :cond_17

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/twitter/android/settings/MobileNotificationsActivity;->d(Lcom/twitter/android/settings/MobileNotificationsActivity;)Lcom/twitter/android/client/c;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/settings/o;->b:J

    move-wide/from16 v30, v0

    const/16 v29, 0x400

    move-object/from16 v0, v26

    move-wide/from16 v1, v30

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/c;->a(JI)V

    goto/16 :goto_1

    .line 872
    :cond_17
    invoke-static/range {v4 .. v23}, Lcom/twitter/library/provider/NotificationSetting;->a(IIIIIIIIIIIIIIIIIIZI)I

    move-result v26

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/twitter/android/settings/MobileNotificationsActivity;->e(Lcom/twitter/android/settings/MobileNotificationsActivity;)Lcom/twitter/android/client/c;

    move-result-object v29

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/settings/o;->b:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v29

    move-wide/from16 v1, v30

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/c;->a(JI)V

    goto/16 :goto_1

    .line 937
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 966
    :cond_19
    new-instance v5, Lcom/twitter/library/scribe/TwitterScribeLog;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v6, v6, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    invoke-virtual {v6}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "settings"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "notifications"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "disable_notifications"

    aput-object v8, v6, v7

    .line 967
    invoke-virtual {v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v5

    .line 966
    invoke-static {v5}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_4

    .line 971
    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 976
    :cond_1b
    const-string/jumbo v4, "opt_out"

    goto/16 :goto_6

    :cond_1c
    move/from16 v4, v27

    goto/16 :goto_3
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 671
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/o;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 704
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 705
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->f:Z

    if-eqz v0, :cond_5

    .line 706
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    invoke-static {v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->b(Lcom/twitter/android/settings/MobileNotificationsActivity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/settings/o;->x:Z

    .line 707
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->h:Z

    if-eqz v0, :cond_2

    .line 708
    iput v2, p0, Lcom/twitter/android/settings/o;->e:I

    .line 713
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->x:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->a(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->m:I

    .line 714
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->w:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->a(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->l:I

    .line 715
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->A:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->a(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->o:I

    .line 716
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->B:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->a(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->p:I

    .line 717
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->j:Z

    if-eqz v0, :cond_3

    .line 718
    iput v2, p0, Lcom/twitter/android/settings/o;->s:I

    .line 722
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->l:Z

    if-eqz v0, :cond_4

    .line 723
    iput v2, p0, Lcom/twitter/android/settings/o;->t:I

    .line 730
    :goto_2
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->m:Z

    if-eqz v0, :cond_8

    .line 731
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->G:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->b(Landroid/preference/Preference;)I

    move-result v0

    .line 732
    if-ne v0, v2, :cond_6

    .line 733
    iput v1, p0, Lcom/twitter/android/settings/o;->r:I

    .line 734
    iput v2, p0, Lcom/twitter/android/settings/o;->j:I

    .line 745
    :goto_3
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->y:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->a(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->k:I

    .line 746
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->r:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->b(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->f:I

    .line 747
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->z:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->a(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->n:I

    .line 748
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->A:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->a(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->o:I

    .line 749
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->B:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->a(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->p:I

    .line 750
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->C:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->a(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->q:I

    .line 751
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->D:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->a(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->u:I

    .line 752
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->E:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->a(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->v:I

    .line 753
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->F:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->a(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->w:I

    .line 754
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->s:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->b(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->g:I

    .line 755
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->t:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->b(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->h:I

    .line 756
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->u:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->b(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->i:I

    .line 758
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->f:Z

    if-eqz v0, :cond_0

    .line 759
    iget v0, p0, Lcom/twitter/android/settings/o;->g:I

    if-eqz v0, :cond_9

    .line 760
    iget v0, p0, Lcom/twitter/android/settings/o;->m:I

    iput v0, p0, Lcom/twitter/android/settings/o;->s:I

    .line 764
    :goto_4
    iget v0, p0, Lcom/twitter/android/settings/o;->h:I

    if-eqz v0, :cond_a

    .line 765
    iget v0, p0, Lcom/twitter/android/settings/o;->m:I

    iput v0, p0, Lcom/twitter/android/settings/o;->t:I

    .line 770
    :cond_0
    :goto_5
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->o:Z

    iget-boolean v3, p0, Lcom/twitter/android/settings/o;->x:Z

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->d:I

    iget v3, p0, Lcom/twitter/android/settings/o;->f:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->n:I

    iget v3, p0, Lcom/twitter/android/settings/o;->k:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->e:I

    iget v3, p0, Lcom/twitter/android/settings/o;->g:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->f:I

    iget v3, p0, Lcom/twitter/android/settings/o;->h:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->g:I

    iget v3, p0, Lcom/twitter/android/settings/o;->i:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->h:I

    iget v3, p0, Lcom/twitter/android/settings/o;->j:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->m:I

    iget v3, p0, Lcom/twitter/android/settings/o;->e:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->i:I

    iget v3, p0, Lcom/twitter/android/settings/o;->l:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->o:I

    iget v3, p0, Lcom/twitter/android/settings/o;->m:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->p:I

    iget v3, p0, Lcom/twitter/android/settings/o;->n:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->q:I

    iget v3, p0, Lcom/twitter/android/settings/o;->o:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->r:I

    iget v3, p0, Lcom/twitter/android/settings/o;->p:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->s:I

    iget v3, p0, Lcom/twitter/android/settings/o;->q:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->l:I

    iget v3, p0, Lcom/twitter/android/settings/o;->r:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->j:I

    iget v3, p0, Lcom/twitter/android/settings/o;->s:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->k:I

    iget v3, p0, Lcom/twitter/android/settings/o;->t:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->t:I

    iget v3, p0, Lcom/twitter/android/settings/o;->u:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->u:I

    iget v3, p0, Lcom/twitter/android/settings/o;->v:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->v:I

    iget v3, p0, Lcom/twitter/android/settings/o;->w:I

    if-eq v0, v3, :cond_b

    :cond_1
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lcom/twitter/android/settings/o;->c:Z

    .line 790
    invoke-static {}, Lcom/twitter/android/settings/MobileNotificationsActivity;->i()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_7
    if-ge v0, v4, :cond_d

    aget-object v5, v3, v0

    .line 791
    iget-object v6, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    invoke-virtual {v6, v5}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_c

    .line 792
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NotificationSettingsActivity preference (key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") was unexpectedly null in WriteAccountUserTask.onPreExecute()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 802
    :goto_8
    return-void

    .line 710
    :cond_2
    iput v1, p0, Lcom/twitter/android/settings/o;->e:I

    goto/16 :goto_0

    .line 720
    :cond_3
    iput v1, p0, Lcom/twitter/android/settings/o;->s:I

    goto/16 :goto_1

    .line 725
    :cond_4
    iput v1, p0, Lcom/twitter/android/settings/o;->t:I

    goto/16 :goto_2

    .line 728
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->q:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->a(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->e:I

    goto/16 :goto_2

    .line 735
    :cond_6
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 736
    iput v2, p0, Lcom/twitter/android/settings/o;->r:I

    .line 737
    iput v1, p0, Lcom/twitter/android/settings/o;->j:I

    goto/16 :goto_3

    .line 739
    :cond_7
    iput v1, p0, Lcom/twitter/android/settings/o;->r:I

    .line 740
    iput v1, p0, Lcom/twitter/android/settings/o;->j:I

    goto/16 :goto_3

    .line 743
    :cond_8
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->v:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/o;->a(Landroid/preference/Preference;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/o;->j:I

    goto/16 :goto_3

    .line 762
    :cond_9
    iput v1, p0, Lcom/twitter/android/settings/o;->s:I

    goto/16 :goto_4

    .line 767
    :cond_a
    iput v1, p0, Lcom/twitter/android/settings/o;->t:I

    goto/16 :goto_5

    :cond_b
    move v0, v1

    .line 770
    goto :goto_6

    .line 790
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 797
    :cond_d
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    const-string/jumbo v3, "use_led"

    invoke-virtual {v0, v3}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/settings/o;->z:Z

    .line 798
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    const-string/jumbo v3, "vibrate"

    invoke-virtual {v0, v3}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/settings/o;->y:Z

    .line 799
    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget-boolean v0, v0, Lcom/twitter/library/provider/ca;->c:Z

    iget-boolean v3, p0, Lcom/twitter/android/settings/o;->z:Z

    if-ne v0, v3, :cond_e

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget-boolean v0, v0, Lcom/twitter/library/provider/ca;->a:Z

    iget-boolean v3, p0, Lcom/twitter/android/settings/o;->y:Z

    if-ne v0, v3, :cond_e

    iget-object v0, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget-object v0, v0, Lcom/twitter/library/provider/ca;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/settings/o;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v3, v3, Lcom/twitter/android/settings/MobileNotificationsActivity;->g:Ljava/lang/String;

    .line 801
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    move v1, v2

    :cond_f
    iput-boolean v1, p0, Lcom/twitter/android/settings/o;->d:Z

    goto/16 :goto_8
.end method
