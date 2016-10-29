.class public final Lqh;
.super Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;
.source "Twttr"


# static fields
.field private static volatile G:[Lqh;


# instance fields
.field public A:[Lqg;

.field public B:Z

.field public C:Ljava/lang/String;

.field public D:Z

.field public E:Z

.field public a:Lqj;

.field public b:Lqj;

.field public c:Lqj;

.field public d:Lqj;

.field public e:Lqj;

.field public f:Lqj;

.field public g:Lqj;

.field public h:Lqj;

.field public i:Lqj;

.field public j:Lqj;

.field public k:Lqj;

.field public l:Lqj;

.field public m:Lqj;

.field public n:Lqj;

.field public o:Lqj;

.field public p:Lqj;

.field public q:Ljava/lang/String;

.field public r:I

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:[Lqg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;-><init>()V

    .line 412
    invoke-virtual {p0}, Lqh;->b()Lqh;

    .line 413
    return-void
.end method

.method public static a()[Lqh;
    .locals 2

    .prologue
    .line 307
    sget-object v0, Lqh;->G:[Lqh;

    if-nez v0, :cond_1

    .line 308
    sget-object v1, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_0
    sget-object v0, Lqh;->G:[Lqh;

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x0

    new-array v0, v0, [Lqh;

    sput-object v0, Lqh;->G:[Lqh;

    .line 313
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_1
    sget-object v0, Lqh;->G:[Lqh;

    return-object v0

    .line 313
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;)Lqh;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 701
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a()I

    move-result v0

    .line 702
    sparse-switch v0, :sswitch_data_0

    .line 706
    invoke-static {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/e;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    :sswitch_0
    return-object p0

    .line 712
    :sswitch_1
    iget-object v0, p0, Lqh;->a:Lqj;

    if-nez v0, :cond_1

    .line 713
    new-instance v0, Lqj;

    invoke-direct {v0}, Lqj;-><init>()V

    iput-object v0, p0, Lqh;->a:Lqj;

    .line 715
    :cond_1
    iget-object v0, p0, Lqh;->a:Lqj;

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    goto :goto_0

    .line 719
    :sswitch_2
    iget-object v0, p0, Lqh;->b:Lqj;

    if-nez v0, :cond_2

    .line 720
    new-instance v0, Lqj;

    invoke-direct {v0}, Lqj;-><init>()V

    iput-object v0, p0, Lqh;->b:Lqj;

    .line 722
    :cond_2
    iget-object v0, p0, Lqh;->b:Lqj;

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    goto :goto_0

    .line 726
    :sswitch_3
    iget-object v0, p0, Lqh;->c:Lqj;

    if-nez v0, :cond_3

    .line 727
    new-instance v0, Lqj;

    invoke-direct {v0}, Lqj;-><init>()V

    iput-object v0, p0, Lqh;->c:Lqj;

    .line 729
    :cond_3
    iget-object v0, p0, Lqh;->c:Lqj;

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    goto :goto_0

    .line 733
    :sswitch_4
    iget-object v0, p0, Lqh;->d:Lqj;

    if-nez v0, :cond_4

    .line 734
    new-instance v0, Lqj;

    invoke-direct {v0}, Lqj;-><init>()V

    iput-object v0, p0, Lqh;->d:Lqj;

    .line 736
    :cond_4
    iget-object v0, p0, Lqh;->d:Lqj;

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    goto :goto_0

    .line 740
    :sswitch_5
    iget-object v0, p0, Lqh;->e:Lqj;

    if-nez v0, :cond_5

    .line 741
    new-instance v0, Lqj;

    invoke-direct {v0}, Lqj;-><init>()V

    iput-object v0, p0, Lqh;->e:Lqj;

    .line 743
    :cond_5
    iget-object v0, p0, Lqh;->e:Lqj;

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    goto :goto_0

    .line 747
    :sswitch_6
    iget-object v0, p0, Lqh;->f:Lqj;

    if-nez v0, :cond_6

    .line 748
    new-instance v0, Lqj;

    invoke-direct {v0}, Lqj;-><init>()V

    iput-object v0, p0, Lqh;->f:Lqj;

    .line 750
    :cond_6
    iget-object v0, p0, Lqh;->f:Lqj;

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    goto :goto_0

    .line 754
    :sswitch_7
    iget-object v0, p0, Lqh;->g:Lqj;

    if-nez v0, :cond_7

    .line 755
    new-instance v0, Lqj;

    invoke-direct {v0}, Lqj;-><init>()V

    iput-object v0, p0, Lqh;->g:Lqj;

    .line 757
    :cond_7
    iget-object v0, p0, Lqh;->g:Lqj;

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    goto/16 :goto_0

    .line 761
    :sswitch_8
    iget-object v0, p0, Lqh;->h:Lqj;

    if-nez v0, :cond_8

    .line 762
    new-instance v0, Lqj;

    invoke-direct {v0}, Lqj;-><init>()V

    iput-object v0, p0, Lqh;->h:Lqj;

    .line 764
    :cond_8
    iget-object v0, p0, Lqh;->h:Lqj;

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    goto/16 :goto_0

    .line 768
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqh;->q:Ljava/lang/String;

    goto/16 :goto_0

    .line 772
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->c()I

    move-result v0

    iput v0, p0, Lqh;->r:I

    goto/16 :goto_0

    .line 776
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqh;->s:Ljava/lang/String;

    goto/16 :goto_0

    .line 780
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqh;->u:Ljava/lang/String;

    goto/16 :goto_0

    .line 784
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqh;->v:Ljava/lang/String;

    goto/16 :goto_0

    .line 788
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqh;->w:Ljava/lang/String;

    goto/16 :goto_0

    .line 792
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqh;->x:Ljava/lang/String;

    goto/16 :goto_0

    .line 796
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqh;->t:Ljava/lang/String;

    goto/16 :goto_0

    .line 800
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lqh;->y:Z

    goto/16 :goto_0

    .line 804
    :sswitch_12
    const/16 v0, 0x9a

    invoke-static {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/e;->b(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;I)I

    move-result v2

    .line 806
    iget-object v0, p0, Lqh;->z:[Lqg;

    if-nez v0, :cond_a

    move v0, v1

    .line 807
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lqg;

    .line 809
    if-eqz v0, :cond_9

    .line 810
    iget-object v3, p0, Lqh;->z:[Lqg;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 812
    :cond_9
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_b

    .line 813
    new-instance v3, Lqg;

    invoke-direct {v3}, Lqg;-><init>()V

    aput-object v3, v2, v0

    .line 814
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    .line 815
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a()I

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 806
    :cond_a
    iget-object v0, p0, Lqh;->z:[Lqg;

    array-length v0, v0

    goto :goto_1

    .line 818
    :cond_b
    new-instance v3, Lqg;

    invoke-direct {v3}, Lqg;-><init>()V

    aput-object v3, v2, v0

    .line 819
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    .line 820
    iput-object v2, p0, Lqh;->z:[Lqg;

    goto/16 :goto_0

    .line 824
    :sswitch_13
    const/16 v0, 0xa2

    invoke-static {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/e;->b(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;I)I

    move-result v2

    .line 826
    iget-object v0, p0, Lqh;->A:[Lqg;

    if-nez v0, :cond_d

    move v0, v1

    .line 827
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lqg;

    .line 829
    if-eqz v0, :cond_c

    .line 830
    iget-object v3, p0, Lqh;->A:[Lqg;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    :cond_c
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_e

    .line 833
    new-instance v3, Lqg;

    invoke-direct {v3}, Lqg;-><init>()V

    aput-object v3, v2, v0

    .line 834
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    .line 835
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a()I

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 826
    :cond_d
    iget-object v0, p0, Lqh;->A:[Lqg;

    array-length v0, v0

    goto :goto_3

    .line 838
    :cond_e
    new-instance v3, Lqg;

    invoke-direct {v3}, Lqg;-><init>()V

    aput-object v3, v2, v0

    .line 839
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    .line 840
    iput-object v2, p0, Lqh;->A:[Lqg;

    goto/16 :goto_0

    .line 844
    :sswitch_14
    iget-object v0, p0, Lqh;->i:Lqj;

    if-nez v0, :cond_f

    .line 845
    new-instance v0, Lqj;

    invoke-direct {v0}, Lqj;-><init>()V

    iput-object v0, p0, Lqh;->i:Lqj;

    .line 847
    :cond_f
    iget-object v0, p0, Lqh;->i:Lqj;

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    goto/16 :goto_0

    .line 851
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lqh;->B:Z

    goto/16 :goto_0

    .line 855
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqh;->C:Ljava/lang/String;

    goto/16 :goto_0

    .line 859
    :sswitch_17
    iget-object v0, p0, Lqh;->p:Lqj;

    if-nez v0, :cond_10

    .line 860
    new-instance v0, Lqj;

    invoke-direct {v0}, Lqj;-><init>()V

    iput-object v0, p0, Lqh;->p:Lqj;

    .line 862
    :cond_10
    iget-object v0, p0, Lqh;->p:Lqj;

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    goto/16 :goto_0

    .line 866
    :sswitch_18
    iget-object v0, p0, Lqh;->j:Lqj;

    if-nez v0, :cond_11

    .line 867
    new-instance v0, Lqj;

    invoke-direct {v0}, Lqj;-><init>()V

    iput-object v0, p0, Lqh;->j:Lqj;

    .line 869
    :cond_11
    iget-object v0, p0, Lqh;->j:Lqj;

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    goto/16 :goto_0

    .line 873
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lqh;->D:Z

    goto/16 :goto_0

    .line 877
    :sswitch_1a
    iget-object v0, p0, Lqh;->k:Lqj;

    if-nez v0, :cond_12

    .line 878
    new-instance v0, Lqj;

    invoke-direct {v0}, Lqj;-><init>()V

    iput-object v0, p0, Lqh;->k:Lqj;

    .line 880
    :cond_12
    iget-object v0, p0, Lqh;->k:Lqj;

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    goto/16 :goto_0

    .line 884
    :sswitch_1b
    iget-object v0, p0, Lqh;->l:Lqj;

    if-nez v0, :cond_13

    .line 885
    new-instance v0, Lqj;

    invoke-direct {v0}, Lqj;-><init>()V

    iput-object v0, p0, Lqh;->l:Lqj;

    .line 887
    :cond_13
    iget-object v0, p0, Lqh;->l:Lqj;

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    goto/16 :goto_0

    .line 891
    :sswitch_1c
    iget-object v0, p0, Lqh;->m:Lqj;

    if-nez v0, :cond_14

    .line 892
    new-instance v0, Lqj;

    invoke-direct {v0}, Lqj;-><init>()V

    iput-object v0, p0, Lqh;->m:Lqj;

    .line 894
    :cond_14
    iget-object v0, p0, Lqh;->m:Lqj;

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    goto/16 :goto_0

    .line 898
    :sswitch_1d
    iget-object v0, p0, Lqh;->n:Lqj;

    if-nez v0, :cond_15

    .line 899
    new-instance v0, Lqj;

    invoke-direct {v0}, Lqj;-><init>()V

    iput-object v0, p0, Lqh;->n:Lqj;

    .line 901
    :cond_15
    iget-object v0, p0, Lqh;->n:Lqj;

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    goto/16 :goto_0

    .line 905
    :sswitch_1e
    iget-object v0, p0, Lqh;->o:Lqj;

    if-nez v0, :cond_16

    .line 906
    new-instance v0, Lqj;

    invoke-direct {v0}, Lqj;-><init>()V

    iput-object v0, p0, Lqh;->o:Lqj;

    .line 908
    :cond_16
    iget-object v0, p0, Lqh;->o:Lqj;

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    goto/16 :goto_0

    .line 912
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lqh;->E:Z

    goto/16 :goto_0

    .line 702
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x7a -> :sswitch_e
        0x82 -> :sswitch_f
        0x8a -> :sswitch_10
        0x90 -> :sswitch_11
        0x9a -> :sswitch_12
        0xa2 -> :sswitch_13
        0xaa -> :sswitch_14
        0xb0 -> :sswitch_15
        0xba -> :sswitch_16
        0xc2 -> :sswitch_17
        0xca -> :sswitch_18
        0xd0 -> :sswitch_19
        0xda -> :sswitch_1a
        0xe2 -> :sswitch_1b
        0xea -> :sswitch_1c
        0xf2 -> :sswitch_1d
        0xfa -> :sswitch_1e
        0x100 -> :sswitch_1f
    .end sparse-switch
.end method

.method public synthetic b(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;)Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lqh;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;)Lqh;

    move-result-object v0

    return-object v0
.end method

.method public b()Lqh;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 416
    iput-object v0, p0, Lqh;->a:Lqj;

    .line 417
    iput-object v0, p0, Lqh;->b:Lqj;

    .line 418
    iput-object v0, p0, Lqh;->c:Lqj;

    .line 419
    iput-object v0, p0, Lqh;->d:Lqj;

    .line 420
    iput-object v0, p0, Lqh;->e:Lqj;

    .line 421
    iput-object v0, p0, Lqh;->f:Lqj;

    .line 422
    iput-object v0, p0, Lqh;->g:Lqj;

    .line 423
    iput-object v0, p0, Lqh;->h:Lqj;

    .line 424
    iput-object v0, p0, Lqh;->i:Lqj;

    .line 425
    iput-object v0, p0, Lqh;->j:Lqj;

    .line 426
    iput-object v0, p0, Lqh;->k:Lqj;

    .line 427
    iput-object v0, p0, Lqh;->l:Lqj;

    .line 428
    iput-object v0, p0, Lqh;->m:Lqj;

    .line 429
    iput-object v0, p0, Lqh;->n:Lqj;

    .line 430
    iput-object v0, p0, Lqh;->o:Lqj;

    .line 431
    iput-object v0, p0, Lqh;->p:Lqj;

    .line 432
    const-string/jumbo v0, ""

    iput-object v0, p0, Lqh;->q:Ljava/lang/String;

    .line 433
    iput v1, p0, Lqh;->r:I

    .line 434
    const-string/jumbo v0, ""

    iput-object v0, p0, Lqh;->s:Ljava/lang/String;

    .line 435
    const-string/jumbo v0, ""

    iput-object v0, p0, Lqh;->t:Ljava/lang/String;

    .line 436
    const-string/jumbo v0, ""

    iput-object v0, p0, Lqh;->u:Ljava/lang/String;

    .line 437
    const-string/jumbo v0, ""

    iput-object v0, p0, Lqh;->v:Ljava/lang/String;

    .line 438
    const-string/jumbo v0, ""

    iput-object v0, p0, Lqh;->w:Ljava/lang/String;

    .line 439
    const-string/jumbo v0, ""

    iput-object v0, p0, Lqh;->x:Ljava/lang/String;

    .line 440
    iput-boolean v1, p0, Lqh;->y:Z

    .line 441
    invoke-static {}, Lqg;->a()[Lqg;

    move-result-object v0

    iput-object v0, p0, Lqh;->z:[Lqg;

    .line 442
    invoke-static {}, Lqg;->a()[Lqg;

    move-result-object v0

    iput-object v0, p0, Lqh;->A:[Lqg;

    .line 443
    iput-boolean v1, p0, Lqh;->B:Z

    .line 444
    const-string/jumbo v0, ""

    iput-object v0, p0, Lqh;->C:Ljava/lang/String;

    .line 445
    iput-boolean v1, p0, Lqh;->D:Z

    .line 446
    iput-boolean v1, p0, Lqh;->E:Z

    .line 447
    const/4 v0, -0x1

    iput v0, p0, Lqh;->F:I

    .line 448
    return-object p0
.end method
